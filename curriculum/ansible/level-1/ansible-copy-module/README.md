## Ansible Copy Module

### Problem

There is data on jump host that needs to be copied on all application servers in Stratos DC. Nautilus DevOps team want
to perform this task using Ansible. Perform the task as per details mentioned below:

a. On jump host create an inventory file /home/thor/ansible/inventory and add all application servers as managed nodes.

b. On jump host create a playbook /home/thor/ansible/playbook.yml to copy /usr/src/dba/index.html file to all
application servers at location /opt/dba.

Note: Validation will try to run the playbook using command ansible-playbook -i inventory playbook.yml so please make
sure the playbook works this way without passing any extra arguments.

### Solution

- `cd ansible`
- `vi /inventory`:

```shell
[stapps]
stapp01 ansible_host=172.16.238.10 ansible_user=tony ansible_ssh_pass=Ir0nM@n
stapp02 ansible_host=172.16.238.11 ansible_user=steve ansible_ssh_pass=Am3ric@
stapp03 ansible_host=172.16.238.12 ansible_user=banner ansible_ssh_pass=BigGr33n
```

- `vi playbook.yml`:

- See: [Solution](./playbook.yml)
