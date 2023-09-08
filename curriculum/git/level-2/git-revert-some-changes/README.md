## Git Revert Some Changes

### Problem

The Nautilus application development team was working on a git repository /usr/src/kodekloudrepos/media present on Storage server in Stratos DC. However, they reported an issue with the recent commits being pushed to this repo. They have asked the DevOps team to revert repo HEAD to last commit. Below are more details about the task:

1. In /usr/src/kodekloudrepos/media git repository, revert the latest commit ( HEAD ) to the previous commit (JFYI the previous commit hash should be with initial commit message ).

2. Use `revert media` message (please use all small letters for commit message) for the new revert commit.

### Solution

```shell

cd /usr/src/kodekloudrepos/media

sudo su

git revert HEAD

change the commit to 'revert media'

```
