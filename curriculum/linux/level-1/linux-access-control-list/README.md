## Linux Access Control List

### Problem

The Nautilus security team performed an audit on all servers present in Stratos DC. During the audit some critical
data/files were identified which were having the wrong permissions as per security standards. Once the report was shared
with the production support team, they started fixing the issues. It has been identified that one of the files named
/etc/hostname on Nautilus App 3 server has wrong permissions, so that needs to be fixed and the correct ACLs needs to be
set.

1. The user owner and group owner of the file should be root user.

2. Others must have read only permissions on the file.

3. User rose must not have any permission on the file.

4. User eric should have read only permission on the file.

### Debugging

### Solution

```shell

cd /etc
getfacl hostname
sudo setfacl -m rose:--- hostname
sudo setfacl -m eric:r-- hostname

```
