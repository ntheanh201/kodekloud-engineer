## Ansible Manage Services

### Problem

Developers are looking for dependencies to be installed and run on Nautilus app servers in Stratos DC. They have shared
some requirements with the DevOps team. Because we are now managing packages installation and services management using
Ansible, some playbooks need to be created and tested. As per details mentioned below please complete the task:

a. On jump host create an Ansible playbook /home/thor/ansible/playbook.yml and configure it to install httpd on all app
servers.

b. After installation make sure to start and enable httpd service on all app servers.

c. The inventory /home/thor/ansible/inventory is already there on jump host.

d. Make sure user thor should be able to run the playbook on jump host.

Note: Validation will try to run playbook using command ansible-playbook -i inventory playbook.yml so please make sure
playbook works this way, without passing any extra arguments.~~~~

### Solution

- See: [Solution](./playbook.yaml)
