## Ansible File Module

### Problem

The Nautilus DevOps team is working to test several Ansible modules on servers in Stratos DC. Recently they wanted to
test the file creation on remote hosts using Ansible. Find below more details about the task:

a. Create an inventory file ~/playbook/inventory on jump host and add all app servers in it.

b. Create a playbook ~/playbook/playbook.yml to create a blank file /usr/src/web.txt on all app servers.

c. The /usr/src/web.txt file permission must be 0644.

d. The user/group owner of file /usr/src/web.txt must be tony on app server 1, steve on app server 2 and banner on app
server 3.

Note: Validation will try to run the playbook using command ansible-playbook -i inventory playbook.yml, so please make
sure the playbook works this way without passing any extra arguments.

### Solution

```shell
cd playbook
vi inventory
vi playbook.yml

ansible-playbook -i inventory playbook.yml
```

- See: [Solution](./playbook.yml)
