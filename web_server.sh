 #!/bin/bash

#serveur web
sudo apt-get install apache2
sudo apt-get update

sudo a2dismod mpm_event
sudo a2enmod mpm_prefork

#activez le firewall
sudo ufw app list
sudo ufw app info "Apache Full"
sudo ufw allow "Apache Full"

# base de donnée
sudo apt install mariadb-server
sudo mysql_secure_installation
sleep(2)
y
sleep(2)
n
sleep(2)
y
sleep(2)
y
sleep(2)
y
sleep(2)
y
sleep(2)
sudo systemctl enable mariadb
sleep(2)

#création base de donnée
wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php

#php 8.1
sleep(2)
sudo apt install php php-pear php-mysql libapache2-mod-php php-fpm php-cli

#activer php sur le serveur
sleep(10)
sudo a2enmod php8.1

#lancement
sleep(3)
sudo service apache2 reload