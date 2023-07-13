# KodeKloud Engineer Ansible

- Jumphost: `CentOS 8`
    - user: `thor`
    - password: `mjolnir123`

- Nautilus App Servers: `CentOS 7`

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


# Getting Started

- Clone the repository: `git clone https://github.com/ntheanh201/kodekloud-engineer-ansible.git`
- Go to folder: `cd kodekloud-engineer-ansible`
- Install Ansible: `source ./install_ansible.sh`
- Solve task by running Ansible playbook

# Ansible

## Test environment

`ansible-playbook -i test-environments tasks/../solution.yaml`

## Nautilus environment

`ansible-playbook -i environments tasks/../solution.yaml`


# Tasks

- [Linux Timezones Setting](/tasks/linux-timezones-setting/)
- [Linux user expiry](/tasks/linux-user-expiry/)
- [Linux user with non-interactive shell](/tasks/linux-user-with-non-interactive-shell/)
- [Linux user without home](/tasks/linux-user-without-home/)
- [Linux file permissions](/tasks/linux-file-permissions/)
- [Selinux installation](/tasks/selinux-installation/)
- [Linux Run Levels](/tasks/linux-run-levels/)
- [Create a Cron Job](/tasks/create-a-cron-job/)
- [Linux Postfix Troubleshooting](/tasks/linux-postfix-troubleshooting/)
- [Linux string substitute](/tasks/linux-string-substitute/)