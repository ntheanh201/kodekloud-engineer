## Linux Configure sudo

### Problem

We have some users on all app servers in Stratos Datacenter. Some of them have been assigned some new roles and responsibilities, therefore their users need to be upgraded with sudo access so that they can perform admin level tasks.

a. Provide sudo access to user john on all app servers.

b. Make sure you have set up password-less sudo for the user.

### Debugging

### Solution

```shell

ssh-keygen -t rsa -b 4096 -f "/home/thor/.ssh/id_rsa" -q -N ""
sshpass -p Ir0nM@n ssh-copy-id -i "/home/thor/.ssh/id_rsa.pub" tony@172.16.238.10 -f -o StrictHostKeyChecking=no
sshpass -p Am3ric@ ssh-copy-id -i "/home/thor/.ssh/id_rsa.pub" steve@172.16.238.11 -f -o StrictHostKeyChecking=no
sshpass -p BigGr33n ssh-copy-id -i "/home/thor/.ssh/id_rsa.pub" banner@172.16.238.12 -f -o StrictHostKeyChecking=no

```

- See: [Ansible solution](solution.yaml)
