## Docker Volumes Mapping

### Problem

The Nautilus DevOps team is testing applications containerization, which issupposed to be migrated on docker
container-based environments soon. In today's stand-up meeting one of the team members has been assigned a task to
create and test a docker container with certain requirements. Below are more details:

a. On App Server 3 in Stratos DC pull nginx image (preferably latest tag but others should work too).

b. Create a new container with name blog from the image you just pulled.

c. Map the host volume /opt/security with container volume /usr/src/. There is an sample.txt file present on same server
under /tmp; copy that file to /opt/security. Also please keep the container in running state.

### Solution

```shell
sshpass -p BigGr33n ssh -o StrictHostKeyChecking=no banner@172.16.238.12

docker pull nginx

docker run -d --name blog -v /opt/security:/usr/src/ nginx

cp /tmp/sample.txt /opt/security
```