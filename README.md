# Wayne Harris dotfiles

> My own macOS preferences and configurations for Terminal and Apps.

## install

Run:

```sh
bash -c "$(curl -fsSL https://raw.githubusercontent.com/wayneharris/dotfiles/main/script/install)"
```

This will symlink the appropriate files in `.dotfiles` to the home directory.
Everything is configured within `~/.dotfiles`.

`dot` is a simple script that installs some dependencies, sets sane OS X
defaults, and so on. Tweak this script, and occasionally run `dot` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.

## components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into the
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you we keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when running `script/bootstrap`.
- **topic/install.sh**: Any file with this name and with exec permission, will
  be run at bootstrap phase.
