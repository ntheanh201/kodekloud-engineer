## Git Install and Create Repository

### Problem

The Nautilus development team shared with the DevOps team requirements for new application development, setting up a Git repository for that project. Create a Git repository on Storage server in Stratos DC as per details given below:

1. Install git package using yum on Storage server.

2. After that, create/init a git repository named /opt/demo.git (use the exact name as asked and make sure not to create a bare repository).

### Solution

```shell
sudo yum install -y git

mkdir /opt/demo.git
cd /opt/demo.git
git init
```
