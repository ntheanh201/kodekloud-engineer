## Linux Collaborative Directories

### Problem

The Nautilus team doesn't want its data to be accessed by any of the other groups/teams due to security reasons and want their data to be strictly accessed by the sysops group of the team.

Setup a collaborative directory /sysops/data on Nautilus App 2 server in Stratos Datacenter.

The directory should be group owned by the group sysops and the group should own the files inside the directory. The directory should be read/write/execute to the group owners, and others should not have any access.

### Debugging

### Solution

- Understanding Linux file permissions: https://www.redhat.com/sysadmin/linux-file-permissions-explained

- See: [Ansible solution](solution.yaml)
