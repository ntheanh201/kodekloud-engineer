## Git Delete Branches

### Problem

Nautilus developers are actively working on one of the project repositories, /usr/src/kodekloudrepos/demo. They were
doing some testing and created few test branches, now they want to clean those test branches. Below are the requirements
that have been shared with the DevOps team:

On Storage server in Stratos DC delete a branch named xfusioncorp_demo from /usr/src/kodekloudrepos/demo git repo.

### Solution

```shell

cd /usr/src/kodekloudrepos/demo
git checkout master
git branch --delete xfusioncorp_demo
```