## Git Manage Remotes

### Problem

The xFusionCorp development team added updates to the project that is maintained under /opt/cluster.git repo and cloned under /usr/src/kodekloudrepos/cluster. Recently some changes were made on Git server that is hosted on Storage server in Stratos DC. The DevOps team added some new Git remotes, so we need to update remote on /usr/src/kodekloudrepos/cluster repository as per details mentioned below:

a. In /usr/src/kodekloudrepos/cluster repo add a new remote dev_cluster and point it to /opt/xfusioncorp_cluster.git repository.

b. There is a file /tmp/index.html on same server; copy this file to the repo and add/commit to master branch.

c. Finally push master branch to this new remote origin.

### Solution

```shell
cd /usr/src/kodekloudrepos/cluster

sudo su

git remote -v

git remote add dev_cluster /opt/xfusioncorp_cluster.git

cp /tmp/index.html .

git add .

git commit -m 'commit'

git push dev_cluster master
```
