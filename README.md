# Wayne Harris dotfiles

> My own macOS preferences and configurations for Terminal and Apps.

## install

Run:

```sh
bash -c "$(curl -fsSL https://raw.githubusercontent.com/wayneharris/dotfiles/main/script/install)"
```

This installs the repository at `~/.dotfiles`, links the declared home-directory
configuration, installs a local `.zshrc` loader, installs Homebrew packages and
runs the one-time application setup.

Use the `dot` command after installation:

```sh
dot doctor  # read-only checks, including agent health when available
dot install # install declared packages and run one-time application setup
dot update  # pull a clean checkout and update packages and configuration
```

`dot update` refuses to pull while the repository has uncommitted changes.
Apply macOS defaults separately with `~/.dotfiles/macOS/set-defaults.sh`.

## ownership boundaries

- `~/.dotfiles` owns macOS, shell, application and general CLI defaults.
- `~/.agents` owns shared agent instructions, skills, hooks and health checks.
- Application repositories own project-specific Codex environments and
  worktree lifecycle configuration.

The agent toolbox is deliberately not installed or repaired by these dotfiles.
When it is present, `dot doctor` runs its read-only health check.

## components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Files ending in `.zsh` get loaded into the
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/\*.symlink**: Files ending in `*.symlink` get linked into `$HOME`
  when `script/bootstrap` runs.
- **zsh/zshrc**: The tracked shell configuration. The regular `~/.zshrc`
  loader sources this file so application installers cannot dirty the
  repository by appending machine-local configuration.
- **topic/install.sh**: Application installers are called explicitly by
  `bin/dot`; their order is part of the installation contract.
