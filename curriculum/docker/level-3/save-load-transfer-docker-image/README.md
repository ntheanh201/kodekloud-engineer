## Save, Load and Transfer Docker Image

### Problem

One of the DevOps team members was working on to create a new custom docker image on App Server 1 in Stratos DC. He is
done with his changes and image is saved on same server with name blog:datacenter. Recently a requirement has been
raised by a team to use that image for testing, but the team wants to test the same on App Server 3. So we need to
provide them that image on App Server 3 in Stratos DC.

a. On App Server 1 save the image blog:datacenter in an archive.

b. Transfer the image archive to App Server 3.

c. Load that image archive on App Server 3 with same name and tag which was used on App Server 1.

Note: Docker is already installed on both servers; however, if its service is down please make sure to start it.

### Solution

```shell
docker save -o blog.zip blog:datacenter

# Copy archive to App Server 3
scp blog.zip banner@172.16.238.12:/home/banner

# Load the image
docker load < blog.zip
```