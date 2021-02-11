#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

./xcode.sh
./homebrew.sh
./bash.sh

./apps.sh
./git.sh
./../nvm.sh
./browsers.sh
./compression_tools.sh
./gpg.sh
./fonts.sh
./image_tools.sh
./misc.sh
./misc_tools.sh
./php.sh
./../npm.sh
./quick_look.sh
./video_tools.sh
./../vim.sh
./vscode.sh
./web_font_tools.sh
