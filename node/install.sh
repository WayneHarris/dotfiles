#!/usr/bin/env bash
#
# Install NVM (Node Version Manager) using the official installation script
# This avoids conflicts with Homebrew installations

set -e

info() {
  # shellcheck disable=SC2059
  printf "  [ \033[00;34m..\033[0m ] $1"
}

success() {
  # shellcheck disable=SC2059
  printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

# Check if NVM is already installed
if [ -d "$HOME/.nvm" ]; then
  info "NVM already installed, skipping..."
  success "NVM installation check complete"
  exit 0
fi

info "Installing NVM..."

# Install NVM using the official script
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

# Source NVM for immediate use
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Install and use Node version from .nvmrc if it exists
if [ -f "$HOME/.nvmrc" ]; then
  info "Installing Node version from .nvmrc..."
  nvm install
  nvm use
else
  info "Installing latest LTS Node..."
  nvm install --lts
  nvm use --lts
fi

success "NVM installation complete"