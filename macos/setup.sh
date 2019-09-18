#!/usr/bin/env bash

# Install Brew
cd /usr/local
mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew

brew tap homebrew/core
brew tap homebrew/bundle
brew tap homebrew/services
brew tap caskroom/cask
brew tap cloudfoundry/tap

# Upgrade all packages

brew update
brew upgrade
Brew cask upgrade

# Install Common Tools
brew cask install google-chrome 
brew cask install firefox
brew cask install slack
brew cask install zoomus
brew cask install visual-studio-code
brew cask install sublime-text
brew install curl
brew install wget
brew install direnv
brew install zsh

# Install VCS Tools
brew install git
brew install git-crypt
brew install git-lfs
brew cask install github

# Install Programming Languages and DevTools
brew cask install java
brew install ant
brew install maven
brew install gradle
brew install python
brew install go
brew install node
brew install ruby rbenv ruby-build
rbenv install 2.6.3
rbenv global 2.6.3
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
source ~/.bash_profile
gem install rails
brew cask install fly
brew cask install postman

# Install Cloud and Virtualisation Tools
brew cask install docker
brew install terraform
brew install terragrunt
brew install kubernetes-cli
brew install kubernetes-helm
rm /usr/local/bin/kubectl
brew link --overwrite kubernetes-cli
brew cask install minikube
brew install kops
brew install kubeless
brew install awscli
brew cask install google-cloud-sdk
brew install cf-cli
brew cask install vagrant
brew cask install virtualbox

# Databases
brew cask install db-browser-for-sqlite
brew cask install pgadmin4

# Clean up Brew
brew cleanup
