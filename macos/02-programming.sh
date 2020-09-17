#!/usr/bin/env bash

# IDEs
brew cask install jetbrains-toolbox
brew cask install visual-studio-code
brew cask install sublime-text

# Python
PYTHON_VERSION=3.8.1
brew install pyenv
pyenv install $PYTHON_VERSION
pyenv global $PYTHON_VERSION
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc
pip install --upgrade pip

# Node.js
brew install node

# Go
brew install go

# Java
brew install openjdk

# Ant
brew install ant

# Maven
brew install maven

# Gradle
brew install gradle

# Ruby
RUBY_VERSION=2.7.0
brew install ruby rbenv ruby-build
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshenv
echo 'source $HOME/.zshenv' >> ~/.zshrc
echo 'eval "$(rbenv init - zsh)"' >> ~/.zshrc
rbenv install $RUBY_VERSION
rbenv global $RUBY_VERSION
gem install rails

# Clean up Brew
brew cleanup

# Apply changes to Zsh
source ~/.zshrc
