#!/bin/bash

echo ""
echo " +-+ +-+ +-+ +-+ +-+ +-+ +-+ +-+ +-+"
echo " |N| |e| |x| |t| |C| |l| |o| |u| |d|"
echo " +-+ +-+ +-+ +-+ +-+ +-+ +-+ +-+ +-+"
echo " 1. Install Nextcloud + dependencies"
echo " 2. Only NextCloud"
echo " 3. Install dependencies"
echo " 4. Get to our GitHub page"
echo ""
echo ""

read -p "Select your option: " opt1
echo ""


if [ "$opt1" = "1" ]; then

  echo "Updating system and installing required extensions.."

  #Install Updates
  apt-get update
  apt-get dist-upgrade
  
  #Install Apache2
  apt install apache2

  #Install PHP 7.4 with needed extensions
  apt install apache2 libapache2-mod-php mariadb-server php-xml php-cli php-cgi php-mysql php-mbstring php-gd php-curl php-zip

  clear

  echo "Fetching latest release of NextCloud.."

  #Create Folders
  mkdir /var/www/html
  mkdir /var/www/html/nextcloud
  cd /var/www/html/

  #Download latest release and unpack it
  wget https://download.nextcloud.com/server/releases/latest.tar.bz2
  tar xfvj latest.tar.bz2
  rm latest.tar.bz2

  clear
  clear

  sleep 1

  echo "Restarting the web server.."

  a2enmod rewrite
  systemctl restart apache2

    chown -R www-data:www-data /var/www/html/nextcloud/

  systemctl reload apache2
  systemctl restart apache2

  clear

  echo "Nextcloud is now installed!"
fi


if [ "$opt1" = "2" ]; then

  echo "Fetching latest release of NextCloud.."

  #Create Folders
  mkdir /var/www/html
  mkdir /var/www/html/nextcloud
  cd /var/www/html/

  #Download latest release and unpack it
  wget https://download.nextcloud.com/server/releases/latest.tar.bz2
  tar xfvj latest.tar.bz2
  rm latest.tar.bz2

  clear
  clear

  sleep 1

  echo "Restarting the web server.."

  a2enmod rewrite
  systemctl restart apache2

      chown -R www-data:www-data /var/www/html/nextcloud/

  systemctl reload apache2
  systemctl restart apache2

  clear

  echo "Nextcloud is now installed!"
fi


if [ "$opt1" = "3" ]; then

  echo "Installing required extensions.."

  #Install Updates
  apt-get update
  apt-get dist-upgrade

  #Install PHP 7.4 with needed extensions
  apt install php php-gd php-apache php-sqlite php-pgsql php-ldap php-intl php-apcu mariadb smbclient php-mycrypt ffmpeg libreoffice

  #Install Apache2
  apt install apache2

fi


if [ "$opt1" = "4" ]; then
  echo "Here is our GitHub page:"
  echo ""
  echo "https://github.com/X19S/AutoInstall-NextCloud"
  echo ""
fi
