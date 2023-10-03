## Ansible Facts Gathering

### Problem

The Nautilus DevOps team is trying to setup a simple Apache web server on all app servers in Stratos DC using Ansible.
They also want to create a sample html page for now with some app specific data on it. Below you can find more details
about the task.

You will find a valid inventory file /home/thor/playbooks/inventory on jump host (which we are using as an Ansible
controller).

Create a playbook index.yml under /home/thor/playbooks directory on jump host. Using blockinfile Ansible module create a
file facts.txt under /root directory on all app servers and add the following given block in it. You will need to enable
facts gathering for this task.

Ansible managed node architecture is <architecture>

(You can obtain the system architecture from Ansible's gathered facts by using the correct Ansible variable while taking
into account Jinja2 syntax)

Install httpd server on all apps. After that make a copy of facts.txt file as index.html under /var/www/html directory.
Make sure to start httpd service after that.

Note: Do not create a separate role for this task, just add all of the changes in index.yml playbook.

### Solution

- See: [Solution](./index.yaml)

- How to run:
```shell
    cd playbooks
    vi index.yml #(Paste solution)
    ansible-playbook -i inventory index.yml
    ```
