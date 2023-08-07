## Install and Configure HaProxy LBR 

### Problem

There is a static website running in Stratos Datacenter. They have already configured the app servers and code is
already deployed there. To make it work properly, they need to configure LBR server. There are number of options for
that, but team has decided to go with HAproxy. FYI, apache is running on port 3000 on all app servers. Complete this
task as per below details.

a. Install and configure HAproxy on LBR server using yum only and make sure all app servers are added to HAproxy load
balancer. HAproxy must serve on default http port (Note: Please do not remove stats socket /var/lib/haproxy/stats entry
from haproxy default config.).

b. Once done, you can access the website using StaticApp button on the top bar.

### Solution

```shell
sshpass -p Mischi3f ssh -o StrictHostKeyChecking=no loki@172.16.238.14
echo Mischi3f | sudo -S yum install haproxy -y
sudo su
sudo mv /etc/haproxy/haproxy.cfg /etc/haproxy/haproxy.cfg-bak
sudo vi /etc/haproxy/haproxy.cfg

haproxy -f /etc/haproxy/haproxy.cfg
sudo systemctl start haproxy
sudo systemctl restart haproxy
sudo systemctl enable haproxy

```

- See: [Solution](./solution.yaml)
