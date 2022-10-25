#!/bin/bash

echo "Atualizando sistema"
apt-get update 
apt-get upgrade -y

echo "realizando instalações necessárias"
apt-get install apache2 -y
apt-get install unzip -y

echo "baixando arquivo"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "copiando arquivos para pasta padrão do apache"
cd linux-site-dio-main
cp -R * /var/www/html/



