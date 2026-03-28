#!/bin/sh
mkdir -p "$HOME/.config/ghostty"
ln -sf "$(cd "$(dirname "$0")" && pwd)/config" "$HOME/.config/ghostty/config"
