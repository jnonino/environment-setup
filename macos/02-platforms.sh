#!/usr/bin/env bash

# Docker
brew cask install docker

# Kubernetes
brew install kubernetes-cli
rm /usr/local/bin/kubectl
brew link --overwrite kubernetes-cli
echo "if [ $commands[kubectl] ]; then source <(kubectl completion zsh); fi" >> ~/.zshrc

# Helm
brew install helm

# Minikube
brew install minikube

# Kops
brew install kops

# Kubeless
brew install kubeless

# Amazon Web Services Cli
brew install awscli

# Google Cloud Platform SDK
brew cask install google-cloud-sdk

# Virtualbox
brew cask install virtualbox

# Vagrant
brew cask install vagrant

# Clean up Brew
brew cleanup

# Apply changes to Zsh
source ~/.zshrc
