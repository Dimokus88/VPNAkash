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
source $HOME/.bashrc
wget https://github.com/SoftEtherVPN/SoftEtherVPN_Stable/releases/download/v4.39-9772-beta/softether-vpnserver-v4.39-9772-beta-2022.04.26-linux-x64-64bit.tar.gz
tar xvzf softether-vpnserver-v4.39-9772-beta-2022.04.26-linux-x64-64bit.tar.gz
cd vpnserver
make
sleep 10
./vpnserver start
sleep 10
./vpnserver stop
sleep 20
ls
sleep 10
CONFIG=/vpnserver/vpn_server.config
line=$(grep -A 19 -n DDnsClient $CONFIG | grep -m1 -B19 "}" | grep "bool Disabled" | awk -F "-" '{print $1}')
sed -i $line's/false/true/' $CONFIG

ADMINPASS=$(goxkcdpwgen -n 2 -c -d "-")
HUBPASS=$(goxkcdpwgen -n 2 -c -d "-")
PSKPASS=$(openssl rand -hex 4)

USER=$(goxkcdpwgen -n 1)
USERPASS=$(goxkcdpwgen -n 2 -c -d "-")
sleep 10
./vpnserver start
sleep 10
./vpncmd /SERVER 127.0.0.1 /CMD SstpEnable no
./vpncmd /SERVER 127.0.0.1 /CMD SyslogDisable
./vpncmd /SERVER 127.0.0.1 /CMD ServerCipherSet ECDHE-RSA-AES128-GCM-SHA256
./vpncmd /SERVER 127.0.0.1 /HUB:DEFAULT /CMD SecureNatEnable
./vpncmd /SERVER 127.0.0.1 /HUB:DEFAULT /CMD LogDisable packet
./vpncmd /SERVER 127.0.0.1 /HUB:DEFAULT /CMD UserCreate $USER /GROUP:none /REALNAME:none /NOTE:none
{ echo $USERPASS; echo $USERPASS; } | ./vpncmd /SERVER 127.0.0.1 /HUB:DEFAULT /CMD UserPasswordSet $USER
./vpncmd /SERVER 127.0.0.1 /CMD IPsecEnable /L2TP:yes /L2TPRAW:no /ETHERIP:no /PSK:$PSKPASS /DEFAULTHUB:DEFAULT
{ echo $ADMINPASS; echo $ADMINPASS; } | ./vpncmd /SERVER 127.0.0.1 /ADMINHUB:DEFAULT /CMD ServerPasswordSet
{ echo $HUBPASS; echo $HUBPASS; } | ./vpncmd /SERVER 127.0.0.1 /HUB:DEFAULT /CMD SetHubPassword
./vpncmd /SERVER /PASSWORD:$ADMINPASS localhost /CMD OpenVpnMakeConfig openvpn
 unzip openvpn.zip '*_openvpn_remote_access_l3.ovpn'
