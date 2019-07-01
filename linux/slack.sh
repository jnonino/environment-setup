#!/bin/bash

SLACK_VERSION=3.0.5

echo "Installing Slack"

wget https://downloads.slack-edge.com/linux_releases/slack-desktop-${SLACK_VERSION}-amd64.deb
dpkg --install slack-desktop-${SLACK_VERSION}-amd64.deb
