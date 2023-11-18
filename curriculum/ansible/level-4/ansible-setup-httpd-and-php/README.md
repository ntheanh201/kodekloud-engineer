## Ansible Setup Httpd and PHP

### Problem

Nautilus Application development team wants to test the Apache and PHP setup on one of the app servers in Stratos Datacenter. They want the DevOps team to prepare an Ansible playbook to accomplish this task. Below you can find more details about the task.


There is an inventory file ~/playbooks/inventory on jump host.


Create a playbook ~/playbooks/httpd.yml on jump host and perform the following tasks on App Server 3.


a. Install httpd and php packages (whatever default version is available in yum repo).


b. Change default document root of Apache to /var/www/html/myroot in default Apache config /etc/httpd/conf/httpd.conf. Make sure /var/www/html/myroot path exists (if not please create the same).


c. There is a template ~/playbooks/templates/phpinfo.php.j2 on jump host. Copy this template to the Apache document root you created as phpinfo.php file and make sure user owner and the group owner for this file is apache user.


d. Start and enable httpd service.


Note: Validation will try to run the playbook using command ansible-playbook -i inventory httpd.yml, so please make sure the playbook works this way without passing any extra arguments.

### Solution

- See: [Solution](./httpd.yaml)
