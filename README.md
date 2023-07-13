# KodeKloud Engineer Ansible

- Jumphost: CentOS 8

- Nautilus App Servers: CentOS 7

# Common Linux commands

| Service Name             | Command                     |
| ------------------------ | --------------------------- |
| Nautilus App 1           | `ssh tony@172.16.238.10`    |
| Nautilus App 2           | `ssh steve@172.16.238.11`   |
| Nautilus App 3           | `ssh banner@172.16.238.12`  |

# SSH to server with sshpass

`sudo yum install sshpass -y`

| Service Name             | Command                                                                    |
| ------------------------ | -------------------------------------------------------------------------- |
| Nautilus App 1           | `sshpass -p Ir0nM@n ssh -o StrictHostKeyChecking=no tony@172.16.238.10`    |
| Nautilus App 2           | `sshpass -p Am3ric@ ssh -o StrictHostKeyChecking=no steve@172.16.238.11`   |
| Nautilus App 3           | `sshpass -p BigGr33n ssh -o StrictHostKeyChecking=no banner@172.16.238.12` |


# Ansible

## Test environment

`ansible-playbook -i test-environments tasks/../solution.yaml`

## Nautilus environment

`ansible-playbook -i environments tasks/../solution.yaml`