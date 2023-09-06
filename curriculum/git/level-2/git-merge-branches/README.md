## Git Merge Branches

### Problem

The Nautilus application development team has been working on a project repository /opt/news.git. This repo is cloned at /usr/src/kodekloudrepos on storage server in Stratos DC. They recently shared the following requirements with DevOps team:

Create a new branch datacenter in /usr/src/kodekloudrepos/news repo from master and copy the /tmp/index.html file (present on storage server itself) into the repo. Further, add/commit this file in the new branch and merge back that branch into master branch. Finally, push the changes to the origin for both of the branches.

### Solution

```shell
sudo su
cd /usr/src/kodekloudrepos/news
git checkout -b datacenter master
cp /tmp/index.html $(pwd)
git add .
git commit -m 'cmt'

git checkout master

git merge datacenter

git push origin master
```
