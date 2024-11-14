#!/bin/bash
#============================================================================
# SCRIPT de provisionamento de Web Server após instalação limpa do Ubuntu Server
# como projeto para entrega na Formação Linux Fundamentals em https://DIO.me
#
# AUTHOR: Gabriel M. de Andrade
#============================================================================
#
#
echo "---------------------------------------------------------------"
echo "SCRIPT IaC para Web Server após instalação limpa Ubuntu Server."
echo "---------------------------------------------------------------"
echo "*"
echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando as arquivos da aplicação..."
cd /tmp
#===================================================================
# ATENÇÃO: necessário alteração nessas linhas
# Use a PRIMEIRA LINHA para repositório local
# Sugestão: use o comando python3 -m http.server 6060 
# para criar um servidor web temporário e facilitar a transferência
#  ou
# Use a SEGUNDA LINHA para repositório no GITHUB
#===================================================================
#L1 wget http://172.21.95.25:6060/linux-site-dio-main.zip
#L2 wget http://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
#============================================

unzip linux-site-dio-main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
