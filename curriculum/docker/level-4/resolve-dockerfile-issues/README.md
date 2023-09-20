## Resolve Dockerfile Issues

### Problem

The Nautilus DevOps team is working to create new images per requirements shared by the development team. One of the
team members is working to create a Dockerfile on App Server 1 in Stratos DC. While working on it she ran into issues in
which the docker build is failing and displaying errors. Look into the issue and fix it to build an image as per details
mentioned below:

a. The Dockerfile is placed on App Server 1 under /opt/docker directory.

b. Fix the issues with this file and make sure it is able to build the image.

c. Do not change base image, any other valid configuration within Dockerfile, or any of the data been used — for
example, index.html.

Note: Please note that once you click on FINISH button all existing images, the containers will be destroyed and new
image will be built from your Dockerfile.

### Solution

- Build original Dockerfile to determine the issue: `docker build -t httpd .`

```shell
Status: Downloaded newer image for httpd:2.4.43
 ---> f1455599cc2e
Step 2/8 : RUN sed -i "s/Listen 80/Listen 8080/g" /usr/local/apache2/conf/httpd.conf
 ---> Running in 92f5c0c61ef1
Removing intermediate container 92f5c0c61ef1
 ---> 24822e73e283
Step 3/8 : RUN sed -i '/LoadModule\ ssl_module modules\/mod_ssl.so/s/^#//g' conf/httpd.conf
 ---> Running in 80dc649fd962
Removing intermediate container 80dc649fd962
 ---> 6b9faed0ee3e
Step 4/8 : RUN sed -i '/LoadModule\ socache_shmcb_module modules\/mod_socache_shmcb.so/s/^#//g' conf/httpd.conf
 ---> Running in 9b7315461434
Removing intermediate container 9b7315461434
 ---> c620ee02b864
Step 5/8 : RUN sed -i '/Include\ conf\/extra\/httpd-ssl.conf/s/^#//g' conf/httpd.conf
 ---> Running in 6f6a513063ac
Removing intermediate container 6f6a513063ac
 ---> a0b6438fea4c
Step 6/8 : COPY /server.crt /usr/local/apache2/conf/server.crt
COPY failed: stat /var/lib/docker/tmp/docker-builder005135448/server.crt: no such file or directory
```

-> The problem is wrong path of files

- Fix: See [Fixed Dockerfile](./fixed/Dockerfile)

- Rebuild image: `docker build -t httpd .`
- Run built image: `docker run -p 8080:8080 httpd`
