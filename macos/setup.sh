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

# Install VCS Tools
brew install git
brew install git-crypt
brew install git-lfs

# Install Programming Languages and DevTools
brew cask install java
brew install ant
brew install maven
brew install gradle
brew install python
brew install go
brew install node
brew cask install fly
brew cask install postman

# Install Cloud and Virtualisation Tools
brew cask install docker
brew install terraform
brew install kubernetes-cli
brew install kubernetes-helm
rm /usr/local/bin/kubectl
brew link --overwrite kubernetes-cli
brew cask install minikube
brew install awscli
brew cask install google-cloud-sdk
brew install cf-cli
brew cask install vagrant
brew cask install virtualbox

# Clean up Brew
brew cleanup
