#!/usr/bin/env bash

# Docker
# brew install --cask docker

# Podman
brew install podman podman-compose
brew install --cask podman-desktop

# Kubernetes
brew install kubernetes-cli
echo "[[ $commands[kubectl] ]] && source <(kubectl completion zsh)" >> ~/.zshrc # add autocomplete permanently to your zsh shell

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
echo "source \"/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc\"" >> ~/.zshrc
echo "source \"/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc\"" >> ~/.zshrc

# Virtualbox
# brew cask install virtualbox

# Vagrant
# brew cask install vagrant

# Clean up Brew
brew cleanup

# Apply changes to Zsh
source ~/.zshrc
