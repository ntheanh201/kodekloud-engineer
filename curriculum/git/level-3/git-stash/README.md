## Git Stash

### Problem

The Nautilus application development team was working on a git repository /usr/src/kodekloudrepos/ecommerce present on Storage server in Stratos DC. One of the developers stashed some in-progress changes in this repository, but now they want to restore some of the stashed changes. Find below more details to accomplish this task:

Look for the stashed changes under /usr/src/kodekloudrepos/ecommerce git repository, and restore the stash with stash@{1} identifier. Further, commit and push your changes to the origin.

### Solution

```shell
sudo su

cd /usr/src/kodekloudrepos/ecommerce

git stash pop 1

git add .

git commit -m 'commit'

git push origin master
```
