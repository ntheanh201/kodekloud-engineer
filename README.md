# KodeKloud Engineer

- Jumphost: `CentOS 8`

    - user: `thor`
    - password: `mjolnir123`

- Nautilus App Servers: `CentOS 7`

# Common Linux commands

| Service Name             | Command                     |
|--------------------------|-----------------------------|
| Nautilus App 1           | `ssh tony@172.16.238.10`    |
| Nautilus App 2           | `ssh steve@172.16.238.11`   |
| Nautilus App 3           | `ssh banner@172.16.238.12`  |
| Nautilus HTTP LBR        | `ssh loki@172.16.238.14`    |
| Nautilus DB Server       | `ssh peter@172.16.239.10`   |
| Nautilus Storage Server  | `ssh natasha@172.16.238.15` |
| Nautilus Backup Server   | `ssh clint@172.16.238.16`   |
| Nautilus Mail Server     | `ssh groot@172.16.238.17`   |
| Jenkins Server for CI/CD | `ssh jenkins@172.16.238.19` |

# SSH to server with sshpass

`sudo yum install sshpass -y`

| Server Name | Purpose                  | Command                                                                     |
|-------------|--------------------------|-----------------------------------------------------------------------------|
| stapp01     | Nautilus App 1           | `sshpass -p Ir0nM@n ssh -o StrictHostKeyChecking=no tony@172.16.238.10`     |
| stapp02     | Nautilus App 2           | `sshpass -p Am3ric@ ssh -o StrictHostKeyChecking=no steve@172.16.238.11`    |
| stapp03     | Nautilus App 3           | `sshpass -p BigGr33n ssh -o StrictHostKeyChecking=no banner@172.16.238.12`  |
| stlb01      | Nautilus HTTP LBR        | `sshpass -p Mischi3f ssh -o StrictHostKeyChecking=no loki@172.16.238.14`    |
| stdb01      | Nautilus DB Server       | `sshpass -p 'Sp!dy' ssh -o StrictHostKeyChecking=no peter@172.16.239.10`    |
| ststor01    | Nautilus Storage Server  | `sshpass -p Bl@kW ssh -o StrictHostKeyChecking=no natasha@172.16.238.15`    |
| stbkp01     | Nautilus Backup Server   | `sshpass -p H@wk3y3 ssh -o StrictHostKeyChecking=no clint@172.16.238.16`    |
| stmail01    | Nautilus Mail Server     | `sshpass -p Gr00T123 ssh -o StrictHostKeyChecking=no groot@172.16.238.17`   |
| jenkins     | Jenkins Server for CI/CD | `sshpass -p 'j@rv!s' ssh -o StrictHostKeyChecking=no jenkins@172.16.238.19` |

# Getting Started

- Clone the repository: `git clone https://github.com/ntheanh201/kodekloud-engineer.git`
- Go to folder: `cd kodekloud-engineer`
- Install Ansible: `./install_ansible.sh`
- Solve task by running Ansible playbook

# Ansible

## Test environment

`ansible-playbook -i test-environments curriculum/<module_name>/<task>/<level>/solution.yaml`

## Nautilus environment

`ansible-playbook -i environments curriculum/<module_name>/<task>/<level>/solution.yaml`

# Curriculum

## Linux

- See: [Linux](/curriculum/linux)

### Level 1

- [Linux Timezones Setting](/curriculum/linux/level-1/linux-timezones-setting/)
- [Linux User Expiry](/curriculum/linux/level-1/linux-user-expiry/)
- [Linux User with Non-interactive Shell](/curriculum/linux/level-1/linux-user-with-non-interactive-shell/)
- [Linux User Without Home](/curriculum/linux/level-1/linux-user-without-home/)
- [Linux File Permissions](/curriculum/linux/level-1/linux-file-permissions/)
- [Selinux Installation](/curriculum/linux/level-1/selinux-installation/)
- [Linux Run Levels](/curriculum/linux/level-1/linux-run-levels/)
- [Disable Root Login](/curriculum/linux/level-1/disable-root-login/)
- [Linux NTP Setup](/curriculum/linux/level-1/linux-ntp-setup/)
- [Web Server Security](/curriculum/linux/level-1/web-server-security)
- [Setup SSL for Nginx](/curriculum/linux/level-1/setup-ssl-nginx/)
- [Create a group](/curriculum/linux/level-1/create-a-group/)
- [Create a user](/curriculum/linux/level-1/create-a-user/)
- [Linux Access Control List](/curriculum/linux/level-1/linux-access-control-list/)
- [Linux User Files](/curriculum/linux/level-1/linux-user-files/)
- [Linux Remote Copy](/curriculum/linux/level-1/linux-remote-copy/)
- [Cron schedule deny to users](/curriculum/linux/level-1/cron-schedule-deny-to-users)
- [Linux Firewalld Rules](/curriculum/linux/level-1/linux-firewalld-rules)
- [Linux Resource Limits](/curriculum/linux/level-1/linux-resource-limits)

### Level 2

- [Create a Cron Job](/curriculum/linux/level-2/create-a-cron-job/)
- [Linux Postfix Troubleshooting](/curriculum/linux/level-2/linux-postfix-troubleshooting/)
- [Linux String Substitute](/curriculum/linux/level-2/linux-string-substitute/)
- [MariaDB Troubleshooting](/curriculum/linux/level-2/mariadb-troubleshooting/)
- [Linux Services](/curriculum/linux/level-2/linux-services/)
- [Linux Banner](/curriculum/linux/level-2/linux-banner)
- [Linux Collaborative Directories](/curriculum/linux/level-2/linux-collaborative-directories/)
- [DNS Troubleshooting](/curriculum/linux/level-2/dns-troubleshooting/)
- [Linux SSH Authentication](/curriculum/linux/level-2/linux-ssh-authentication/)
- [Linux Find Command](/curriculum/linux/level-2/linux-find-command/)
- [Linux LogRotate](/curriculum/linux/level-2/linux-log-rotate/)
- [Linux Configure sudo](/curriculum/linux/level-2/linux-configure-sudo/)
- [Install a package](/curriculum/linux/level-2/install-a-package/)
- [Linux GPG Encryption](/curriculum/linux/level-2/linux-gpg-encryption/)
- [Configure Local Yum repos](/curriculum/linux/level-2/configure-local-yum-repos/)
- [Linux Bash Scripts](/curriculum/linux/level-2/linux-bash-scripts)
- [Application Security](/curriculum/linux/level-2/application-security/)
- [Add Response Headers in Apache](/curriculum/linux/level-2/add-response-headers-in-apache)
- [Install Ansible](/curriculum/linux/level-2/install-ansible)
- [Linux Firewalld Setup](/curriculum/linux/level-2/linux-firewalld-setup)
- [Linux Postfix Mail Server](/curriculum/linux/level-2/linux-postfix-mail-server/)
- [Install and Configure HaProxy LBR](/curriculum/linux/level-2/install-and-configure-haproxy-lbr)

### Level 3

- [Apache Redirects](/curriculum/linux/level-3/apache-redirects/)

## Kubernetes

- See: [Kubernetes](/curriculum/kubernetes)

### Level 1

- [Create Pods in Kubernetes Cluster](/curriculum/kubernetes/level-1/create-pods-in-k8s-cluster)
- [Create Deployments in Kubernetes Cluster](/curriculum/kubernetes/level-1/create-deployments-in-k8s-cluster)
- [Create Namespaces in Kubernetes Cluster](/curriculum/kubernetes/level-1/create-namespaces-in-k8s-cluster)
- [Set Limits for Resources in Kubernetes](/curriculum/kubernetes/level-1/set-limits-for-resources-in-k8s)
- [Rolling Updates in Kubernetes](/curriculum/kubernetes/level-1/rolling-updates-in-k8s)
- [Rollback a Deployment in Kubernetes](/curriculum/kubernetes/level-1/rollback-a-deployment-in-k8s)
- [Create Replicaset in Kubernetes Cluster](/curriculum/kubernetes/level-1/create-replicaset-in-k8s-cluster)
- [Create Cronjobs in Kubernetes](/curriculum/kubernetes/level-1/create-cronjobs-in-k8s)
- [Countdown job in Kubernetes](/curriculum/kubernetes/level-1/countdown-job-in-k8s)
- [Kubernetes Time Check Pod](/curriculum/kubernetes/level-1/k8s-time-check-pod)
- [Troubleshoot Issue With Pods](/curriculum/kubernetes/level-1/troubleshoot-issue-with-pods)
- [Update an Existing Deployment in Kubernetes](/curriculum/kubernetes/level-1/update-an-existing-deployment-in-k8s)
- [ReplicationController in Kubernetes](/curriculum/kubernetes/level-1/replication-controller-in-k8s)
- [Fix Issue with VolumeMounts in Kubernetes](/curriculum/kubernetes/level-1/fix-issue-with-volume-mounts-in-k8s)

### Level 2

- [Kubernetes Shared Volumes](/curriculum/kubernetes/level-2/k8s-shared-volumes)

## Ansible

- See: [Ansible](/curriculum/ansible)

### Level 1

- [Ansible Basic Playbook](/curriculum/ansible/level-1/ansible-basic-playbook)
- [Ansible Inventory Update](/curriculum/ansible/level-1/ansible-inventory-update)
- [Ansible Config File Update](/curriculum/ansible/level-1/ansible-config-file-update)
- [Ansible Copy Module](/curriculum/ansible/level-1/ansible-copy-module)
- [Ansible File Module](/curriculum/ansible/level-1/ansible-file-module)

### Level 2

## Docker

- See: [Docker](/curriculum/docker)

### Level 1

- [Install Docker Package](/curriculum/docker/level-1/install-docker-package)
- [Run a Docker Container](/curriculum/docker/level-1/run-a-docker-container)
- [Docker Delete Container](/curriculum/docker/level-1/docker-delete-container)
- [Docker Copy Operations](/curriculum/docker/level-1/docker-copy-operations)
- [Docker Container Issue](/curriculum/docker/level-1/docker-container-issue)

### Level 2

## Git

- See: [Git](/curriculum/git)

### Level 1

- [Git Install and Create Bare Repository](/curriculum/git/level-1/git-install-and-create-bare-repository)
- [Git Clone Repositories](/curriculum/git/level-1/git-clone-repositories)
- [Git Fork a Repository](/curriculum/git/level-1/git-fork-a-repository)
- [Git Repository Update](/curriculum/git/level-1/git-repository-update)
- [Git Delete Branches](/curriculum/git/level-1/git-delete-branches)

### Level 2

## Jenkins

- See: [Jenkins](/curriculum/jenkins)

### Level 1

- [Jenkins Installation](/curriculum/jenkins/level-1/jenkins-installation)
- [Jenkins Install Packages](/curriculum/jenkins/level-1/jenkins-install-packages)

### Level 2

## Cloud (AWS) - Coming Soon

## Cloud (Azure) - Coming Soon

## Cloud (GCP) - Coming Soon

## Projects - Coming Soon