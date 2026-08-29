#!/bin/zsh

if [[ -d "$HOME/.grok/bin" ]]; then
  export PATH="$HOME/.grok/bin:$PATH"
fi

if [[ -d "$HOME/.grok/completions/zsh" ]]; then
  fpath=("$HOME/.grok/completions/zsh" $fpath)
fi
