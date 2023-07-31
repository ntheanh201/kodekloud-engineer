## Git Repository Update

### Problem

The Nautilus development team started with new project development. They have created different Git repositories to
manage respective project's source code. One of the repositories /opt/demo.git was created recently. The team has given
us a sample index.html file that is currently present on jump host under /tmp directory. The repository has been cloned
at /usr/src/kodekloudrepos on storage server in Stratos DC.

Copy sample index.html file from jump host to storage server under cloned repository at /usr/src/kodekloudrepos/demo,
further add/commit the file and push to the master branch.

### Solution

```shell
sshpass -p Bl@kW ssh -o StrictHostKeyChecking=no natasha@172.16.238.15

cd /usr/src/kodekloudrepos/demo

vi index.html #copy content from jump_host: /tmp/index.html
git add .
git commit -m 'commit'
git push origin master
```