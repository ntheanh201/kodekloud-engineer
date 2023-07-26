## Linux Firewalld Rules

### Problem

The Nautilus system admins team recently deployed a web UI application for their backup utility running on the Nautilus
backup server in Stratos Datacenter. The application is running on port 8088. They have firewalld installed on that
server. The requirements that have come up include the following:

Open all incoming connection on 8088/tcp port. Zone should be public.

### Debugging

### Solution

```shell
sudo firewall-cmd --zone=public --add-port=8088/tcp

```