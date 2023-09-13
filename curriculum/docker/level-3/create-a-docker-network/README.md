## Create a Docker Network

### Problem

The Nautilus DevOps team needs to set up several docker environments for different applications. One of the team members
has been assigned a ticket where he has been asked to create some docker networks to be used later. Complete the task
based on the following ticket description:

a. Create a docker network named as official on App Server 2 in Stratos DC.

b. Configure it to use macvlan drivers.

c. Set it to use subnet 192.168.30.0/24 and iprange 192.168.30.2/24.

### Solution

```shell

docker network create -d macvlan --subnet=192.168.30.0/24 --ip-range=192.168.30.2/24 official

```