## Linux SSH Authentication

### Problem

The system admins team of xFusionCorp Industries has set up some scripts on jump host that run on regular intervals and perform operations on all app servers in Stratos Datacenter. To make these scripts work properly we need to make sure the thor user on jump host has password-less SSH access to all app servers through their respective sudo users (i.e tony for app server 1). Based on the requirements, perform the following:

Set up a password-less authentication from user thor on jump host to all app servers through their respective sudo users.

### Debugging

### Solution

```shell

ssh-keygen -t rsa -b 4096 -f "/home/thor/.ssh/id_rsa" -q -N ""
sshpass -p Ir0nM@n ssh-copy-id -i "/home/thor/.ssh/id_rsa.pub" tony@172.16.238.10 -f -o StrictHostKeyChecking=no
sshpass -p Am3ric@ ssh-copy-id -i "/home/thor/.ssh/id_rsa.pub" steve@172.16.238.11 -f -o StrictHostKeyChecking=no
sshpass -p BigGr33n ssh-copy-id -i "/home/thor/.ssh/id_rsa.pub" banner@172.16.238.12 -f -o StrictHostKeyChecking=no

```
