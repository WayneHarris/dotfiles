#!/bin/sh
if [ "$(uname -s)" != "Darwin" ]; then
  exit 0
fi

# Create VS Code User directory if it doesn't exist
VSCODE_USER_DIR=~/Library/Application\ Support/Code/User
if [ ! -d "$VSCODE_USER_DIR" ]; then
  mkdir -p "$VSCODE_USER_DIR"
fi

# Create or update the symlink to settings.json
if [ -L "$VSCODE_USER_DIR/settings.json" ] || [ -f "$VSCODE_USER_DIR/settings.json" ]; then
  rm "$VSCODE_USER_DIR/settings.json"
fi
ln -s ~/.vscode/settings.json "$VSCODE_USER_DIR/settings.json"


if test "$(which code)"; then
  code --install-extension 1Password.op-vscode
  code --install-extension DavidAnson.vscode-markdownlint
  code --install-extension dracula-theme.theme-dracula
  code --install-extension eamodio.gitlens
  code --install-extension EditorConfig.EditorConfig
  code --install-extension gitpod.gitpod-desktop
  code --install-extension golang.go
  code --install-extension hashicorp.hcl
  code --install-extension hashicorp.terraform
  code --install-extension hediet.vscode-drawio
  code --install-extension jmMeessen.jenkins-declarative-support
  code --install-extension ms-azuretools.vscode-docker
  code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools
  code --install-extension ms-python.python
  code --install-extension ms-python.vscode-pylance
  code --install-extension ms-azuretools.vscode-docker
  code --install-extension ms-vscode-remote.remote-ssh
  code --install-extension ms-vscode-remote.remote-ssh-edit
  code --install-extension ms-vscode.azure-account
  code --install-extension ms-vscode.makefile-tools
  code --install-extension redhat.ansible
  code --install-extension redhat.java
  code --install-extension redhat.vscode-commons
  code --install-extension redhat.vscode-xml
  code --install-extension redhat.vscode-yaml
  code --install-extension RescueTime.rescuetime
  code --install-extension SonarSource.sonarlint-vscode
  code --install-extension vscjava.vscode-java-debug
  code --install-extension vscjava.vscode-java-dependency
  code --install-extension vscjava.vscode-java-pack
  code --install-extension vscjava.vscode-java-test
  code --install-extension vscode-icons-team.vscode-icons
  code --install-extension WakaTime.vscode-wakatime
  code --install-extension wholroyd.jinja
  code --install-extension xyz.local-history
fi


