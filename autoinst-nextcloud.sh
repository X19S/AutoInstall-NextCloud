#!/bin/bash

echo ""
echo " +-+ +-+ +-+ +-+ +-+ +-+ +-+ +-+ +-+"
echo " |N| |e| |x| |t| |C| |l| |o| |u| |d|"
echo " +-+ +-+ +-+ +-+ +-+ +-+ +-+ +-+ +-+"
echo " 1. Install Nextcloud"
echo " 2. Uninstall NextCloud"
echo " 3. Get to our GitHub page"
echo ""
echo ""

read -p "Select your option: " opt1
echo ""


if [ "$opt1" = "1" ]; then

  echo "Updating system..."

  #Install Updates
  apt update -y
  apt dist-upgrade -y

  clear

  echo "Installing NextCloud over Snap..."

  snap install nextcloud
  snap start nextcloud

  clear

  echo "Nextcloud is now installed!"
  echo "http://SERVER IP ADDRESS/"
fi


if [ "$opt1" = "2" ]; then

  echo "Uninstalling NextCloud..."

  snap stop nextcloud
  snap remove nextcloud

  clear

  echo "Nextcloud is now uninstalled!"
fi


if [ "$opt1" = "3" ]; then
  echo "Here is our GitHub page:"
  echo ""
  echo "https://github.com/X19S/AutoInstall-NextCloud"
  echo ""
fi
