#!/usr/bin/env bash

# Core Utils
brew install coreutils

# Direnv
brew install direnv
echo 'eval "$(direnv hook zsh)"' >> ~/.zshrc

# Microsoft Edge
brew cask install microsoft-edge

# Google Chrome
brew cask install google-chrome

# Firefox
brew cask install firefox

# cURL and Wget
brew install curl wget
echo 'export PATH="/usr/local/homebrew/opt/curl/bin:$PATH"' >> ~/.zshrc
echo 'export LDFLAGS="-L/usr/local/homebrew/opt/curl/lib"' >> ~/.zshrc
echo 'export CPPFLAGS="-I/usr/local/homebrew/opt/curl/include"' >> ~/.zshrc

# Postman
brew cask install postman

# LaTeX
brew cask install mactex

# Mendeley Reference Manager
brew cask install mendeley-reference-manager

# Clean up Brew
brew cleanup

# Apply changes to Zsh
source ~/.zshrc
