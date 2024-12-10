#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

nodejs_version=20
ssh_port=$(grep -P "Port\s+\d+" /etc/ssh/sshd_config | grep -P -o "\d+")
main_domain=$(cat /etc/yunohost/current_host)

rsa_key=$(ssh-keygen -lf /etc/ssh/ssh_host_rsa_key | awk '{print $2}')
ed25519_key=$(ssh-keygen -lf /etc/ssh/ssh_host_ed25519_key | awk '{print $2}')
ecdsa_key=$(ssh-keygen -lf /etc/ssh/ssh_host_ecdsa_key | awk '{print $2}')
