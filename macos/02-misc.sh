#!/usr/bin/env bash

# Core Utils
brew install coreutils

# Direnv
brew install direnv
echo 'eval "$(direnv hook zsh)"' >> ~/.zshrc

# Google Chrome
brew cask install google-chrome

# Firefox
brew cask install firefox

# cURL and Wget
brew install curl
brew install wget

# Postman
brew cask install postman

# LaTeX
brew cask install mactex

# Clean up Brew
brew cleanup

# Apply changes to Zsh
source ~/.zshrc
