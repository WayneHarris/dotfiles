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

if [ ! -d "$HOME/.nvm" ]; then
  info "Installing NVM..."
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
else
  success "NVM already installed"
fi

# Source NVM for immediate use
export NVM_DIR="$HOME/.nvm"
# shellcheck disable=SC1091
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

if [ -f "$HOME/.nvmrc" ]; then
  info "Installing Node version from .nvmrc..."
  nvm install
  nvm use
else
  info "Installing latest LTS Node..."
  nvm install --lts
  nvm use --lts
fi

packages=()
while IFS= read -r package; do
  if [ -n "$package" ] && [[ "$package" != \#* ]]; then
    packages+=("$package")
  fi
done < "$HOME/.dotfiles/node/packages.txt"

if [ "${#packages[@]}" -gt 0 ]; then
  info "Installing global npm packages..."
  npm install --global "${packages[@]}"
fi

success "Node tooling installation complete"
