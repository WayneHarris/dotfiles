#!/bin/sh
export PATH="$PATH:/usr/local/share/npm/bin:$HOME/.npm/bin"
export NVM_DIR="$HOME/.nvm"
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
export NVM_LAZY_LOAD=true
export NVM_LAZY_LOAD_EXTRA_COMMANDS=('jflint')
export NVM_COMPLETION=true
export NVM_AUTO_USE=true
