## Ansible Install Package

### Problem

The Nautilus Application development team wanted to test some applications on app servers in Stratos Datacenter. They
shared some pre-requisites with the DevOps team, and packages need to be installed on app servers. Since we are already
using Ansible for automating such tasks, please perform this task using Ansible as per details mentioned below:

1. Create an inventory file /home/thor/playbook/inventory on jump host and add all app servers in it.

2. Create an Ansible playbook /home/thor/playbook/playbook.yml to install samba package on all app servers using Ansible
   yum module.

3. Make sure user thor should be able to run the playbook on jump host.

Note: Validation will try to run playbook using command ansible-playbook -i inventory playbook.yml so please make sure
playbook works this way, without passing any extra arguments.

### Solution

- See: [Solution](./playbook.yml)
