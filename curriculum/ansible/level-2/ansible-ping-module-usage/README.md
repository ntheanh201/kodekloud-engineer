## Ansible Ping Module Usage

### Problem

The Nautilus DevOps team is planning to test several Ansible playbooks on different app servers in Stratos DC. Before
that, some pre-requisites must be met. Essentially, the team needs to set up a password-less SSH connection between
Ansible controller and Ansible managed nodes. One of the tickets is assigned to you; please complete the task as per
details mentioned below:

a. Jump host is our Ansible controller, and we are going to run Ansible playbooks through thor user on jump host.

b.Make appropriate changes on jump host so that user thor on jump host can SSH into App Server 1 through its respective
sudo user. (for example tony for app server 1).

c. There is an inventory file /home/thor/ansible/inventory on jump host. Using that inventory file test Ansible ping
from jump host to App Server 1, make sure ping works.

### Solution

```shell
ssh-keygen
sshpass -p Ir0nM@n ssh-copy-id -i "/home/thor/.ssh/id_rsa.pub" tony@stapp01 -f -o StrictHostKeyChecking=no
ansible -m ping -i inventory stapp01
```