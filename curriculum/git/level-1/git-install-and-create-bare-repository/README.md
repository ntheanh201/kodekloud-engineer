## Git Install and Create Bare Repository

### Problem

The Nautilus development team shared requirements with the DevOps team regarding new application
development.—specifically, they want to set up a Git repository for that project. Create a Git repository on Storage
server in Stratos DC as per details given below:

Install git package using yum on Storage server.

After that create a bare repository /opt/official.git (make sure to use exact name).

### Solution

```shell
sshpass -p Bl@kW ssh -o StrictHostKeyChecking=no natasha@172.16.238.15
echo Bl@kW | sudo -S yum install -y git
sudo git init --bare /opt/official.git
```