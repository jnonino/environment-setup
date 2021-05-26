#!/usr/bin/env bash

# IDEs
brew cask install jetbrains-toolbox
brew cask install visual-studio-code
brew cask install sublime-text

# Python
PYTHON_VERSION=3.9.5
brew install pyenv
pyenv install $PYTHON_VERSION
pyenv global $PYTHON_VERSION
echo -e 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo -e 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo -e 'eval "$(pyenv init --path)"' >> ~/.zshrc
pip install --upgrade pip

# Node.js
brew install node
brew install nvm
mkdir ~/.nvm
echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshenv
echo '[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"' >> ~/.zshenv
echo '[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"' >> ~/.zshenv

# Go
brew install go

# Java
brew install oracle-jdk
echo 'export JAVA_HOME=$(/usr/libexec/java_home)' >> ~/.zshrc

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
