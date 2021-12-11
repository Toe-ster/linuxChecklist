#!/bin/bash
#Made by callSign - 12
#for the use of its current
#cyber patriot team 
#current Team: Knights of the IP Table (12-0094)

sudo apt-get install auditd -y
sudo sed 's/log_file = .*/log_file = /var/log/audit/audit.log/g' /etc/audit/auditd.conf
sudo sed 's/log_format = .*/log_format = RAW/g' /etc/audit/auditd.conf
sudo sed 's/log_group = .*/log_group = root/g' /etc/audit/auditd.conf
sudo sed 's/priority_boost = .*/priority_boost = 4/g' /etc/audit/auditd.conf
sudo sed 's/flush = .*/flush = INCREMENTAL/g' /etc/audit/auditd.conf
sudo sed 's/freq = .*/freq = 20/g' /etc/audit/auditd.conf
sudo sed 's/num_logs = .*/num_logs = 4/g' /etc/audit/auditd.conf
sudo sed 's/disp_qos = .*/disp_qos = lossy/g' /etc/audit/auditd.conf
sudo sed 's/dispatcher = .*/dispatcher = /sbin/audispd/g' /etc/audit/auditd.conf
sudo sed 's/name_format = .*/name_format = NONE/g' /etc/audit/auditd.conf
sudo sed 's/##name = .*/##name = mydomain/g' /etc/audit/auditd.conf
sudo sed 's/max_log_file = .*/max_log_file = 5/g' /etc/audit/auditd.conf
sudo sed 's/max_log_file_action = .*/max_log_file_action = ROTATE/g' /etc/audit/auditd.conf
sudo sed 's/space_left = .*/space_left = 75/g' /etc/audit/auditd.conf
sudo sed 's/space_left_action = .*/space_left_action = SYSLOG/g' /etc/audit/auditd.conf
sudo sed 's/action_mail_acct = .*/action_mail_acct = root/g' /etc/audit/auditd.conf
sudo sed 's/admin_space_left = .*/admin_space_left = 50/g' /etc/audit/auditd.conf
sudo sed 's/admin_space_left_action = .*/admin_space_left_action = SUSPEND/g' /etc/audit/auditd.conf
sudo sed 's/disk_full_action = .*/disk_full_action = SUSPEND/g' /etc/audit/auditd.conf
sudo sed 's/disk_error_action = .*/disk_error_action = SUSPEND/g' /etc/audit/auditd.conf
sudo sed 's/##tcp_listen_port = .*/##tcp_listen_port = /g' /etc/audit/auditd.conf
sudo sed 's/tcp_listen_queue = .*/tcp_listen_queue = 5/g' /etc/audit/auditd.conf
sudo sed 's/tcp_max_per_addr = .*/tcp_max_per_addr = 1/g' /etc/audit/auditd.conf
sudo sed 's/##tcp_client_ports = .*/##tcp_client_ports = 1024-65535/g' /etc/audit/auditd.conf
sudo sed 's/tcp_client_max_idle = .*/tcp_client_max_idle = 0/g' /etc/audit/auditd.conf
sudo sed 's/enable_krb5 = .*/enable_krb5 = no/g' /etc/audit/auditd.conf
sudo sed 's/krb5_principal = .*/krb5_princiapl = auditd/g' /etc/audit/auditd.conf
sudo sed 's/##krb5_key_file = .*/##krb5_key_file = /etc/audit/audit.key/g' /etc/audit/auditd.conf
sudo auditctl -e 1
