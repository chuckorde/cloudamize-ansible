# Cloudamize Ansible Playbook

This is an Ansible playbook to automate the installation of the cloudamize collector on linux servers.

## Step 1
Install ansible on a machine that has ssh access to your linux servers.

* On Ubuntu run `sudo apt install ansible`
* On Centos run `sudo yum install ansible`

## Step 2
Clone this repo
`git clone https://github.com/chuckorde/cloudamize-ansible.git` or download the [zip file](https://github.com/chuckorde/cloudamize-ansible/archive/refs/heads/main.zip).

## Step 3
Edit `inventory.ini` to include the linux servers you wish to monitor.


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



## Step 4
Run the install shell script and follow the prompts.

```
$ ./install.sh
Customer Key: 0dbc6803...
Region (US or EU): us
SSH password:
```

## Step 5

Visit [https://console.cloudamize.com](https://console.cloudamize.com) and confirm that the agents have been installed.
