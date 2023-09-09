## Git Cherry Pick

### Problem

The Nautilus application development team has been working on a project repository /opt/games.git. This repo is cloned at /usr/src/kodekloudrepos on storage server in Stratos DC. They recently shared the following requirements with the DevOps team:

There are two branches in this repository, master and feature. One of the developers is working on the feature branch and their work is still in progress, however they want to merge one of the commits from the feature branch to the master branch, the message for the commit that needs to be merged into master is Update info.txt. Accomplish this task for them, also remember to push your changes eventually.

### Solution

```shell
cd /usr/src/kodekloudrepos/games

git log

see the commit hash is: 2b7ca9a74fa2b9c00f6eb2d8c4576a07ffda392e

git checkout master

git cherry-pick 2b7ca9a74fa2b9c00f6eb2d8c4576a07ffda392e

git push
```
