#!/usr/bin/env bash

# IDEs
brew install --cask jetbrains-toolbox
brew install --cask visual-studio-code
brew install --cask sublime-text

# Python
PYTHON_VERSION=3.10.0
brew install pyenv
pyenv install $PYTHON_VERSION
pyenv global $PYTHON_VERSION
echo -e 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo -e 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo -e 'eval "$(pyenv init --path)"' >> ~/.zshrc
source ~/.zshrc
pip install --upgrade pip

# Node.js
brew install nvm
mkdir ~/.nvm
echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshenv
echo '[ -s "/usr/local/homebrew/opt/nvm/nvm.sh" ] && . "/usr/local/homebrew/opt/nvm/nvm.sh"' >> ~/.zshenv    # This loads nvm
echo '[ -s "/usr/local/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/homebrew/opt/nvm/etc/bash_completion.d/nvm"' >> ~/.zshenv # This loads nvm bash_completion

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
