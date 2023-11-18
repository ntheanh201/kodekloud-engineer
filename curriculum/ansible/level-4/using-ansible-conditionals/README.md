## Using Ansible Conditionals

### Problem

The Nautilus DevOps team had a discussion about, how they can train different team members to use Ansible for different automation tasks. There are numerous ways to perform a particular task using Ansible, but we want to utilize each aspect that Ansible offers. The team wants to utilise Ansible's conditionals to perform the following task:


An inventory file is already placed under /home/thor/ansible directory on jump host, with all the Stratos DC app servers included.


Create a playbook /home/thor/ansible/playbook.yml and make sure to use Ansible's when conditionals statements to perform the below given tasks.


Copy blog.txt file present under /usr/src/security directory on jump host to App Server 1 under /opt/security directory. Its user and group owner must be user tony and its permissions must be 0744 .


Copy story.txt file present under /usr/src/security directory on jump host to App Server 2 under /opt/security directory. Its user and group owner must be user steve and its permissions must be 0744 .


Copy media.txt file present under /usr/src/security directory on jump host to App Server 3 under /opt/security directory. Its user and group owner must be user banner and its permissions must be 0744.


NOTE: You can use ansible_nodename variable from gathered facts with when condition. Additionally, please make sure you are running the play for all hosts i.e use - hosts: all.


Note: Validation will try to run the playbook using command ansible-playbook -i inventory playbook.yml, so please make sure the playbook works this way without passing any extra arguments.

### Solution

- See: [Solution](./playbook.yml)
