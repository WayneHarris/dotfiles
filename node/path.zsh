#!/bin/sh
export PATH="$PATH:/usr/local/share/npm/bin:$HOME/.npm/bin"

# NVM configuration (official installation)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# NVM performance and convenience options
export NVM_LAZY_LOAD=true
export NVM_LAZY_LOAD_EXTRA_COMMANDS=('jflint')
export NVM_COMPLETION=true
export NVM_AUTO_USE=true
