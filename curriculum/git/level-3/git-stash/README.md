## Git Clean

### Problem

The Nautilus application development team was working on a git repository /usr/src/kodekloudrepos/apps present on
Storage server in Stratos DC. One of the developers mistakenly created a couple of files under this repository, but now
they want to clean this repository without adding/pushing any new files. Find below more details:

Clean the /usr/src/kodekloudrepos/apps git repository without adding/pushing any new files, make sure git status is
clean.

### Solution

```shell
sudo su

cd /usr/src/kodekloudrepos/apps

git clean -i
```
