#!/bin/bash

XMIND_VERSION=8
XMIND_UPDATE=7

echo "Installing XMind"

wget http://dl2.xmind.net/xmind-downloads/xmind-$XMIND_VERSION-update$XMIND_UPDATE-linux.zip
unzip xmind-$XMIND_VERSION-update$XMIND_UPDATE-linux.zip -d xmind
mv xmind /opt/
chmod a+w /opt/xmind/XMind_amd64/configuration
mkdir -p /usr/share/fonts/truetype/xmind
cp -R /opt/xmind/fonts/* /usr/share/fonts/truetype/xmind/
fc-cache -f

echo "[Desktop Entry]" >> /usr/share/applications/xmind.desktop
echo "Comment=Create and share mind maps." >> /usr/share/applications/xmind.desktop
echo "Exec=/opt/xmind/$(DIR)/XMind %F" >> /usr/share/applications/xmind.desktop
echo "Name=XMind" >> /usr/share/applications/xmind.desktop
echo "Terminal=false" >> /usr/share/applications/xmind.desktop
echo "Type=Application" >> /usr/share/applications/xmind.desktop
echo "Categories=Office;" >> /usr/share/applications/xmind.desktop
echo "Icon=xmind" >> /usr/share/applications/xmind.desktop
