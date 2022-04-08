# Cloudamize Ansible Playbook

This is an Ansible playbook to automate the installation of the cloudamize collector on linux servers.

## Step 1
Install ansible on a machine that has ssh access to your linux servers.

* On Ubuntu run `sudo apt install ansible`
* On Centos run `sudo yum install ansible`

## Step 2
Clone this repo
`git clone https://github.com/chuckorde/cloudamize-ansible.git`

## Step 3
Edit `inventory.ini` to include the linux servers you with to monitor.


```
[cloudamize]                                                                    
############################################################################### 
###################### Add Host names or IP addresses here #################### 

example1.server.com
example2.server.com
example3.server.com

                                                                                   
############################################################################### 
[all:vars]                                                                         
ansible_python_interpreter=/usr/bin/python3                                        
ansible_ssh_common_args='-o StrictHostKeyChecking=no' 
```



Step 4
Run ansible!

`ansible-playbook -i inventory.ini -K install_agent.yml`

When prompted enter your ssh password.

Step 5

Visit `console.cloudamize.com` and confirm that the agents have been installed.
