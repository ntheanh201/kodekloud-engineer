## Run a Docker Container

### Problem

Nautilus DevOps team is testing some applications deployment on some of the application servers. They need to deploy a
nginx container on Application Server 3. Please complete the task as per details given below:

On Application Server 3 create a container named nginx_3 using image nginx with alpine tag and make sure container is in
running state.

### Solution

```shell
docker run -d --name nginx_3 nginx:alpine
```