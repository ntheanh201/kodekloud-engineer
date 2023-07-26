## Apache Redirects

### Problem

The Nautilus devops team got some requirements related to some Apache config changes. They need to setup some redirects for some URLs. There might be some more changes need to be done. Below you can find more details regarding that:

httpd is already installed on app server 1. Configure Apache to listen on port 8089.

Configure Apache to add some redirects as mentioned below:

a.) Redirect http://stapp01.stratos.xfusioncorp.com:<Port>/ to http://www.stapp01.stratos.xfusioncorp.com:<Port>/ i.e non www to www. This must be a permanent redirect i.e 301

b.) Redirect http://www.stapp01.stratos.xfusioncorp.com:<Port>/blog/ to http://www.stapp01.stratos.xfusioncorp.com:<Port>/news/. This must be a temporary redirect i.e 302.

### Debugging

### Solution

```shell

sshpass -p Ir0nM@n ssh -o StrictHostKeyChecking=no tony@172.16.238.10

cd /etc/httpd/conf.d

sudo vi httpd.conf
cat /etc/httpd/conf/httpd.conf | grep Listen
change Listen to 8083

vi xfusion.conf

"
NameVirtualHost *:8083

<VirtualHost *:8083>
    ServerName stapp01.stratos.xfusioncorp.com
    Redirect 301 / http://www.stapp01.stratos.xfusioncorp.com:8083/
</VirtualHost>

<VirtualHost *:8083>
    ServerName www.stapp01.stratos.xfusioncorp.com
    Redirect 302 /blog/ http://www.stapp01.stratos.xfusioncorp.com:8083/news/
</VirtualHost>
"

echo "Ir0nM@n" | sudo -S systemctl restart httpd


# How to check
curl -vL http://stapp01.stratos.xfusioncorp.com:8083

curl -vL http://stapp01.stratos.xfusioncorp.com:8083/blog

```

- See: [Ansible solution](solution.yaml)
