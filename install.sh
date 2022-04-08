#!/bin/bash

read -p "Customer Key: " customer_key

read -p "Region (US or EU): " region

case $region in
    us|US) region="US";;
    eu|EU) region="EU";;
    *) echo "\n ** Invalid region, please choose US or EU ** "; exit;;
esac

read -s -p "SSH password: " password

ansible-playbook \
    -i inventory.ini \
    -e "region=${region}" \
    -e "customer_key=${customer_key}" \
    -e "ansible_password=${password}" \
    -e "ansible_sudo_pass=${password}" \
    install_agent.yml


