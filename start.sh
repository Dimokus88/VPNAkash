#!/bin/bash
# By Dimokus (https://t.me/Dimokus)
source $HOME/.bashrc
TZ=Europe/Kiev
ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
apt-get update
apt-get upgrade -y
apt-get install -y sudo nano wget tar zip unzip ssh nginx xz-utils make gcc goxkcdpwgen
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
(echo ${my_root_password}; echo ${my_root_password}) | passwd root
service ssh restart
sleep 5
sudo apt-get install -y nano runit
runsvdir -P /etc/service &
source $HOME/.bashrc
wget https://github.com/SoftEtherVPN/SoftEtherVPN_Stable/releases/download/v4.39-9772-beta/softether-vpnserver-v4.39-9772-beta-2022.04.26-linux-x64-64bit.tar.gz
tar xvzf softether-vpnserver-v4.39-9772-beta-2022.04.26-linux-x64-64bit.tar.gz
cd vpnserver
make

CONFIG=/root/vpnserver/vpn_server.config
line=$(grep -n  'bool Disabled true' $CONFIG | awk -F ":" '{print $1}')
sed -i $line's/true/false/' $CONFIG

line=$(grep -A 19 -n DDnsClient $CONFIG | grep -m1 -B19 "}" | grep "bool Disabled" | awk -F "-" '{print $1}')
sed -i $line's/false/true/' $CONFIG

ADMINPASS=$(goxkcdpwgen -n 2 -c -d "-")
HUBPASS=$(goxkcdpwgen -n 2 -c -d "-")
PSKPASS=$(openssl rand -hex 4)

USER=$(goxkcdpwgen -n 1)
USERPASS=$(goxkcdpwgen -n 2 -c -d "-")
cp vpnserver /usr/bin
vpnserver start


