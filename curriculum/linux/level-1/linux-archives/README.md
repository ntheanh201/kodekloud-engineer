## Linux Archives

### Problem

On Nautilus storage server in Stratos DC, there is a storage location named /data, which is used by different developers to keep their data (non confidential data). One of the developers named mariyam has raised a ticket and asked for a copy of their data present in /data/mariyam directory on storage server. /home is a FTP location on storage server itself where developers can download their data. Below are the instructions shared by the system admin team to accomplish this task.

a. Make a mariyam.tar.gz compressed archive of /data/mariyam directory and move the archive to /home directory on Storage Server.

### Debugging

### Solution

```shell
sshpass -p Bl@kW ssh -o StrictHostKeyChecking=no natasha@172.16.238.15
tar -czvf mariyam.tar.gz /data/mariyam
mv mariyam.tar.gz /home

```