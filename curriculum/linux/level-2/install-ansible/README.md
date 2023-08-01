## Install Ansible

### Problem

During the weekly meeting, the Nautilus DevOps team discussed about the automation and configuration management
solutions that they want to implement. While considering several options, the team has decided to go with Ansible for
now due to its simple setup and minimal pre-requisites. The team wanted to start testing using Ansible, so they have
decided to use jump host as an Ansible controller to test different kind of tasks on rest of the servers.

Install ansible version 4.10.0 on Jump host using pip3 only. Make sure Ansible binary is available globally on this
system, i.e all users on this system are able to run Ansible commands.

### Solution

```shell
echo mjolnir123 | sudo -S dnf -y install python3-pip
pip3 install ansible
```