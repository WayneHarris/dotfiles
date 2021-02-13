#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Apps\n\n"

brew_install "Adobe Creative Cloud" "adobe-creative-cloud" "--cask"
brew_install "1Password" "1password" "--cask"
brew_install "1Password CLI" "1password-cli" "--cask"
brew_install "Alfred" "alfred" "--cask"
brew_install "Docker" "docker" "--cask"
brew_install "Image Optim" "imageoptim" "--cask"
brew_install "PHPStorm" "phpstorm" "--cask"
brew_install "Microsoft Office" "microsoft-office" "--cask"
brew_install "Microsoft Teams" "microsoft-teams" "--cask"
brew_install "Slack" "slack" "--cask"
brew_install "Spectacle" "spectacle" "--cask"
brew_install "Sublime Text" "sublime-text" "--cask"
brew_install "Setapp" "setapp" "--cask"
brew_install "Tinkerwell" "tinkerwell" "--cask"
brew_install "WhatsApp" "whatsapp" "--cask"


