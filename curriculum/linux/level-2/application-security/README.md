## Application Security

### Problem

We have a backup management application UI hosted on Nautilus's backup server in Stratos DC. That backup management application code is deployed under Apache on the backup server itself, and Nginx is running as a reverse proxy on the same server. Apache and Nginx ports are 6100 and 8093, respectively. We have iptables firewall installed on this server. Make the appropriate changes to fulfill the requirements mentioned below:

We want to open all incoming connections to Nginx's port and block all incoming connections to Apache's port. Also make sure rules are permanent.

### Debugging

### Solution

```shell
sshpass -p H@wk3y3 ssh -o StrictHostKeyChecking=no clint@172.16.238.16

# Install iptables-services
echo H@wk3y3 | sudo -S yum install iptables-services

iptables -A INPUT -p tcp --dport 8093 -j DROP
iptables -A INPUT -p tcp --dport 6100 -j ACCEPT


sudo service iptables save

# /etc/sysconfig/iptables

sudo systemctl enable iptables
```

- See: [Ansible solution](solution.yaml)
