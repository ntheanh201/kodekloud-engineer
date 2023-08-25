## Ansible Archive Module

### Problem

The Nautilus DevOps team has some data on each app server in Stratos DC that they want to copy to a different location.
However, they want to create an archive of the data first, then they want to copy the same to a different location on
the respective app server. Additionally, there are some specific requirements for each server. Perform the task using
Ansible playbook as per requirements mentioned below:

Create a playbook named playbook.yml under /home/thor/ansible directory on jump host, an inventory file is already
placed under /home/thor/ansible/ directory on Jump Server itself.

1. Create an archive demo.tar.gz (make sure archive format is tar.gz) of /usr/src/finance/ directory ( present on each
   app server ) and copy it to /opt/finance/ directory on all app servers. The user and group owner of archive
   demo.tar.gz should be tony for App Server 1, steve for App Server 2 and banner for App Server 3.

Note: Validation will try to run playbook using command ansible-playbook -i inventory playbook.yml so please make sure
playbook works this way, without passing any extra arguments.

### Solution

- See: [Solution](./solution.yaml)
