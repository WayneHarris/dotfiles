#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   PHP\n\n"

brew_install "PHP" "php"
brew_install "PHP 7.2" "php@7.2"
brew_install "PHP 7.3" "php@7.3"
brew_install "PHP 7.4" "php@7.4"

brew unlink php
brew link php@7.4

pecl install imagick

# Install Redis mkdir fix first
mkdir -p /usr/local/lib/php/pecl
pecl install redis-5.0.2

brew_install "Composer" "composer"
export PATH="$HOME/.composer/vendor/bin:$PATH"
