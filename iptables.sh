	apt-get install -y iptables
	apt-get install -y iptables-persistent
	#Backup
	mkdir /iptables/
	touch /iptables/rules.v4.bak
	touch /iptables/rules.v6.bak
	iptables-save > /iptables/rules.v4.bak
	ip6tables-save > /iptables/rules.v6.bak
	#Clear out and default iptables
	iptables -t nat -F
	iptables -t mangle -F
	iptables -t nat -X
	iptables -t mangle -X
	iptables -F
	iptables -X
	iptables -P INPUT DROP
	iptables -P FORWARD DROP
	iptables -P OUTPUT ACCEPT
	ip6tables -t nat -F
	ip6tables -t mangle -F
	ip6tables -t nat -X
	ip6tables -t mangle -X
	ip6tables -F
	ip6tables -X
	ip6tables -P INPUT DROP
	ip6tables -P FORWARD DROP
	ip6tables -P OUTPUT DROP
	
	#Least Strict Rules
	#iptables -A INPUT -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
	#Strict Rules -- Only allow well known ports (1-1022)
	#iptables -A INPUT -p tcp --match multiport --sports 1:1022 -m conntrack --ctstate ESTABLISHED -j ACCEPT
	#iptables -A INPUT -p udp --match multiport --sports 1:1022 -m conntrack --ctstate ESTABLISHED -j ACCEPT
	#iptables -A OUTPUT -p tcp --match multiport --dports 1:1022 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT
	#iptables -A OUTPUT -p udp --match multiport --dports 1:1022 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT
	#iptables -A OUTPUT -o lo -j ACCEPT
	#iptables -P OUTPUT DROP
	#Very Strict Rules - Only allow HTTP/HTTPS, NTP and DNS
	iptables -A INPUT -p tcp --sport 80 -m conntrack --ctstate ESTABLISHED -j ACCEPT
	iptables -A INPUT -p tcp --sport 443 -m conntrack --ctstate ESTABLISHED -j ACCEPT
	iptables -A INPUT -p tcp --sport 53 -m conntrack --ctstate ESTABLISHED -j ACCEPT
	iptables -A INPUT -p udp --sport 53 -m conntrack --ctstate ESTABLISHED -j ACCEPT
	iptables -A OUTPUT -p tcp --dport 80 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT
	iptables -A OUTPUT -p tcp --dport 443 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT
	iptables -A OUTPUT -p tcp --dport 53 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT
	iptables -A OUTPUT -p udp --dport 53 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT
	iptables -A OUTPUT -o lo -j ACCEPT
	iptables -P OUTPUT DROP
	touch /etc/iptables/rules.v4
	touch /etc/iptables/rules.v6
	iptables-save > /etc/iptables/rules.v4
	ip6tables-save > /etc/iptables/rules.v6
	
	ufw enable
	ufw deny 23
	ufw deny 2049
	ufw deny 515
	ufw deny 111
	ufw deny ssh
	#Samba stuff, delete if samba allowed
	ufw deny netbios-ns
	ufw deny netbios-dgm
	ufw deny netbios-ssn
	ufw deny microsoft-ds
	#ftp stuff
	ufw deny ftp 
	ufw deny sftp 
	ufw deny saft 
	ufw deny ftps-data 
	ufw deny ftps
	#telnet stuff, delete if allowed
	ufw deny telnet
	ufw deny rtelnet
	ufw deny telnets
	#mail protocol stuff, delete if allowed
	ufw deny smtp
	ufw deny pop2
	ufw deny pop3
	ufw deny imap2
	ufw deny imaps
	ufw deny pop3s
	#print stuff, delete if allowed
	ufw deny ipp
	ufw deny printer
	ufw deny cups
	#database stuff, delete if allowed
	ufw deny ms-sql-s
	ufw deny ms-sql-m
	ufw deny mysql
	ufw deny mysql-proxy
	#http/apache stuff, alter if allowed
	ufw deny http
	#dns stuff
	ufw deny domain
