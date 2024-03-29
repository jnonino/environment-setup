#!/usr/bin/env bash

# TF Switch
brew install warrensbox/tap/tfswitch
echo 'autoload -U add-zsh-hook' >> ~/.zshrc
echo '' >> ~/.zshrc
echo 'load-tfswitch() {' >> ~/.zshrc
echo '  local tfswitchrc_path=".tfswitchrc"' >> ~/.zshrc
echo '  if [ -f "$tfswitchrc_path" ]; then' >> ~/.zshrc
echo '    tfswitch' >> ~/.zshrc
echo '  fi' >> ~/.zshrc
echo '}' >> ~/.zshrc
echo 'add-zsh-hook chpwd load-tfswitch' >> ~/.zshrc
echo 'load-tfswitch' >> ~/.zshrc

# Install Terraform Docs
brew install terraform-docs

# Clean up Brew
brew cleanup

# Apply changes to Zsh
source ~/.zshrc
