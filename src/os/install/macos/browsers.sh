#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Browsers\n"

brew_install "Chrome" "google-chrome" "--cask"
brew_install "Firefox" "firefox" "--cask"
brew_install "Microsoft Edge" "microsoft-edge" "--cask"
