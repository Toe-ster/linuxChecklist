#!/bin/bash

apt purge ftp -y
apt purge pure-ftpd -y
apt purge nmap -y
apt purge zenmap -y
apt purge john -y
apt purge john-data -y
apt purge wireshark -y
apt purge ophcrack -y
apt purge ophcrack-cli -y
apt purge netcat -y 
apt purge netcat-openbsd -y 
apt purge netcat-traditional -y 
apt purge ncat -y 
apt purge pnetcat -y 
apt purge socat -y 
apt purge sock -y 
apt purge socket -y 
apt purge sbd -y 
apt purge hydra -y
apt purge hydra-gtk -y
apt purge aircrack-ng -y
apt purge fcrackzip -y
apt purge lcrack -y
apt purge pdfcrack -y
apt purge pyrit -y
apt purge rarcrack -y
apt purge sipcrack -y
apt purge irpas -y
apt purge logkeys -y
apt purge zeitgeist-core -y 
apt purge zeitgeist-datahub -y 
apt purge python-zeitgeist -y 
apt purge rhythmbox-plugin-zeitgeist -y 
apt purge zeitgeist -y 
apt purge nfs-kernel-server -y 
apt purge nfs-common -y 
apt purge portmap -y 
apt purge rpcbind -y 
apt purge autofs -y 
apt purge nginx -y 
apt purge nginx-common -y 
apt purge inetd -y 
apt purge openbsd-inetd -y 
apt purge xinetd -y 
apt purge inetutils-ftp -y 
apt purge inetutils-ftpd -y 
apt purge inetutils-inetd -y 
apt purge inetutils-ping -y 
apt purge inetutils-syslogd -y 
apt purge inetutils-talk -y 
apt purge inetutils-talkd -y 
apt purge inetutils-telnet -y 
apt purge inetutils-telnetd -y 
apt purge inetutils-tools -y 
apt purge inetutils-traceroute -y 
apt purge vnc4server -y 
apt purge vncsnapshot -y 
apt purge vtgrab -y 
apt purge snmp -y 
rm -rf /usr/bin/nc
#telnet stuff
apt purge telnet -y
apt purge telnetd -y
apt purge inetutils-telnetd -y
apt purge telnetd-ssl -y
#remote stuff
apt purge remote-login-service vino remmina remmina-common -y
apt purge rstatd -y
apt purge .*samba.* .*smb.* -y
apt purge vsftpd -y
apt purge openssh-server -y
apt purge samba -y
apt purge samba-common -y
apt purge samba-common-bin -y
apt purge samba4 -y
#db stuff
apt purge mysql-client-core-5.5 -y 
apt purge mysql-client-core-5.6 -y 
apt purge mysql-common-5.5 -y 
apt purge mysql-common-5.6 -y 
apt purge mysql-server -y 
apt purge mysql-server-5.5 -y 
apt purge mysql-server-5.6 -y 
apt purge mysql-client-5.5 -y 
apt purge mysql-client-5.6 -y 
apt purge mysql-server-core-5.6 -y
#http/apache stuff
apt purge apache2 -y
apt purge nginx -y
rm -rf /var/www/*
#dns stuff
apt purge bind9 -y
