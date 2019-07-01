#!/usr/bin/env bash

# Install Brew
cd /usr/local
mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew

tap "homebrew/core"
tap "homebrew/bundle"
tap "homebrew/services"
tap "caskroom/cask"

brew "curl"
brew "git"
brew "wget"
brew "awscli"
brew "go"
brew "terraform"
brew "python"

cask "google-chrome"
cask "slack"
cask "visual-studio-code"
cask "zoomus"
cask "docker"
