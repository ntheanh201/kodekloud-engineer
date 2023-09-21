## Docker Update Permissions

### Problem

One of the Nautilus project developers need access to run docker commands on App Server 3. This user is already created
on the server. Accomplish this task as per details given below:

User kareem is not able to run docker commands on App Server 3 in Stratos DC, make the required changes so that this
user can run docker commands without sudo.

### Solution

```shell
sudo chmod 666 /var/run/docker.sock
sudo su
su kareem
```