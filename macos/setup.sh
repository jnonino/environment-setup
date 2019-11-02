#!/usr/bin/env bash

# Install Brew
cd /usr/local
mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew

brew tap homebrew/core
brew tap homebrew/bundle
brew tap homebrew/services
brew tap homebrew/cask
brew tap cloudfoundry/tap

# Upgrade all packages
brew update
brew upgrade
Brew cask upgrade

# Setup Zsh
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)
brew install zsh-syntax-highlighting
echo 'source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' >> ~/.zshrc
brew install zsh-autosuggestions
echo 'source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh' >> ~/.zshrc
brew install zsh-completions
echo 'fpath=(/usr/local/share/zsh-completions $fpath)' >> ~/.zshrc
rm -f ~/.zcompdump; compinit
chmod go-w '/usr/local/share'
brew install zsh-history-substring-search
echo 'source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh' >> ~/.zshrc
echo 'HISTFILE="$HOME/.zsh_history"' >> ~/.zshrc
echo 'HISTSIZE=50000  # How many lines of history to keep in memory' >> ~/.zshrc
echo 'SAVEHIST=500000 # Number of history entries to save to disk' >> ~/.zshrc
echo 'HISTDUP=erase   # Erase duplicates in the history file' >> ~/.zshrc
echo 'setopt extended_history       # Record timestamp of command in HISTFILE' >> ~/.zshrc
echo 'setopt appendhistory          # Append history to the history file (no overwriting)' >> ~/.zshrc
echo 'setopt hist_expire_dups_first # Delete duplicates first when HISTFILE size exceeds HISTSIZE' >> ~/.zshrc
echo 'setopt sharehistory           # Share history across terminals' >> ~/.zshrc
echo 'setopt incappendhistory       # Immediately append to the history file, not just when a term is killed' >> ~/.zshrc
echo 'setopt hist_ignore_dups       # Ignore duplicated commands history list' >> ~/.zshrc
echo 'setopt hist_ignore_space      # Ignore commands that start with space' >> ~/.zshrc
echo 'setopt hist_verify            # Show command with history expansion to user before running it' >> ~/.zshrc
echo 'setopt inc_append_history     # Add commands to HISTFILE in order of execution' >> ~/.zshrc
echo 'setopt share_history          # Share command history data' >> ~/.zshrc
echo "if [ $commands[kubectl] ]; then source <(kubectl completion zsh); fi" >> ~/.zshrc 
#plugins=(colored-man-pages osx brew dotenv git vscode terraform python pip pipenv autopep8 pylint node npm aws docker docker-compose minikube kubectl kops helm)

# Install Common Tools
brew install coreutils
brew install direnv
echo 'eval "$(direnv hook zsh)"' >> ~/.zshrc

# Browsers and web tools
brew cask install google-chrome 
brew cask install firefox
brew install curl
brew install wget
brew cask install postman

# Collaboration tools
brew cask install slack
brew cask install zoomus

# IDEs
brew cask install jetbrains-toolbox
brew cask install visual-studio-code
brew cask install sublime-text

# Git
brew install git
brew install git-crypt
brew install git-lfs
brew cask install github

# Java
brew cask install java

# Python
PYTHON_VERSION=3.8.0
brew install pyenv
pyenv install $PYTHON_VERSION
pyenv global $PYTHON_VERSION
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc
pip install --upgrade pip

# Ant
brew install ant

# Maven
brew install maven

# Gradle
brew install gradle

# Go
brew install go

# Node.js
brew install node

# Ruby
brew install ruby rbenv ruby-build
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshenv
echo 'source $HOME/.zshenv' >> ~/.zshrc
echo 'eval "$(rbenv init - zsh)"' >> ~/.zshrc
rbenv install 2.6.5
rbenv global 2.6.5
gem install rails

# Terraform
brew install terraform
brew install terragrunt
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

# Docker
brew cask install docker

# Kubernetes
brew install kubernetes-cli
brew install kubernetes-helm
rm /usr/local/bin/kubectl
brew link --overwrite kubernetes-cli
brew install minikube
brew install kops
brew install kubeless
echo "if [ $commands[kubectl] ]; then source <(kubectl completion zsh); fi" >> ~/.zshrc

# Amazon Web Services
brew install awscli

# Google Cloud Platform
brew cask install google-cloud-sdk

# Cloudfoundry
brew install cf-cli

# Virtualbox
brew cask install virtualbox

# Vagrant
brew cask install vagrant

# Databases
brew cask install db-browser-for-sqlite
brew cask install pgadmin4

# Clean up Brew
brew cleanup

# Apply changes to Zsh
source ~/.zshrc
