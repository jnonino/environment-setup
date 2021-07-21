#!/usr/bin/env bash

# Git
brew install git

# Git LFS
brew install git-lfs

# Install GitHub CLI
brew install gh
gh config set git_protocol ssh

# Git Crypt
brew install git-crypt

# Git pre-commit
brew install pre-commit

# Slack
brew cask install slack

# Zoom
brew cask install zoomus

# Clean up Brew
brew cleanup

# Apply changes to Zsh
source ~/.zshrc
