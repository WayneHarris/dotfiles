#!/bin/sh
# grc overrides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`

if which gls >/dev/null 2>&1; then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la="gls -A --color"
else
  alias ls="ls -Fh --color"
  alias l="ls -lAh --color"
  alias ll="ls -l --color"
  alias la="ls -A --color"
fi

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias cd..="cd .."

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

alias cp="cp -iv"
#             │└─ list copied files
#             └─ prompt before overwriting an existing file

alias mkdir="mkdir -pv"
#                   │└─ list created directories
#                   └─ create intermediate directories

alias mv="mv -iv"
#             │└─ list moved files
#             └─ prompt before overwriting an existing file

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

alias :q="exit"
alias c="clear"
alias ch="history -c && > ~/.bash_history"
alias d="cd ~/Desktop"
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ll="ls -l"
alias m="man"
alias map="xargs -n1"
alias code="cd ~/Code"
alias sites="cd ~/Sites"
alias path='printf "%b\n" "${PATH//:/\\n}"'
alias q="exit"

alias grep="grep --color=auto"
alias duf="du -sh * | sort -hr"
alias lsopenports='lsof -i -n -P'

if [ "$(uname -s)" != "Darwin" ]; then
  if [ -z "$(command -v pbcopy)" ]; then
    if [ -n "$(command -v xclip)" ]; then
      alias pbcopy="xclip -selection clipboard"
      alias pbpaste="xclip -selection clipboard -o"
    elif [ -n "$(command -v xsel)" ]; then
      alias pbcopy="xsel --clipboard --input"
      alias pbpaste="xsel --clipboard --output"
    fi
  fi
  if [ -e /usr/bin/xdg-open ]; then
    alias open="xdg-open"
  fi
fi

# greps non ascii chars
nonascii() {
  LANG=C grep --color=always '[^ -~]\+';
}
