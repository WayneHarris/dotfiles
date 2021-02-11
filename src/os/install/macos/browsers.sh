#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Browsers\n"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

printf "\n"

brew_install "Chrome" "google-chrome" "--cask"
brew_install "Chrome Canary" "google-chrome-canary" "--cask"
brew_install "Chromium" "chromium" "--cask"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

printf "\n"

brew_install "Firefox" "firefox" "--cask"
brew_install "Firefox Developer" "firefox-developer-edition" "--cask"
brew_install "Firefox Nightly" "firefox-nightly" "--cask"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

printf "\n"
brew_install "Safari Technology Preview" "safari-technology-preview" "--cask"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

printf "\n"
brew_install "Microsoft Edge" "microsoft-edge" "--cask"
