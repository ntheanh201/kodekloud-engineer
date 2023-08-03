## Ansible Inventory Update

### Problem

The Nautilus DevOps team has started testing their Ansible playbooks on different servers within the stack. They have
placed some playbooks under /home/thor/playbook/ directory on jump host which they want to test. Some of these playbooks
have already been tested on different servers, but now they want to test them on app server 2 in Stratos DC. However,
they first need to create an inventory file so that Ansible can connect to the respective app. Below are some
requirements:

a. Create an ini type Ansible inventory file /home/thor/playbook/inventory on jump host.

b. Add App Server 2 in this inventory along with required variables that are needed to make it work.

c. The inventory hostname of the host should be the server name as per the wiki, for example stapp01 for app server 1 in
Stratos DC.

Note: Validation will try to run the playbook using command ansible-playbook -i inventory playbook.yml so please make
sure the playbook works this way without passing any extra arguments.~~~~

### Solution

```shell
ansible-playbook -i inventory playbook.yml
```