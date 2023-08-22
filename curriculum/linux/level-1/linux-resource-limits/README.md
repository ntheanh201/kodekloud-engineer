## Linux Resource Limits

### Problem

On our Storage server in Stratos Datacenter we are having some issues where nfsuser user is holding hundred of
processes, which is degrading the performance of the server. Therefore, we have a requirement to limit its maximum
processes. Please set its maximum process limits as below:

a. soft limit = 1025

b. hard_limit = 2026

### Debugging

### Solution

`$ <domain> <type> <item> <value>`

The following list provides a definition for each field:

- domain: A domain can be a user, user group, GUID ranges, etc.
- type: The type of the limit. It can be either hard or soft.
- item: What resource will be limited. For this guide, we’ll be using “nproc”.
- value: The value of the limit.

```shell
sudo vi /etc/security/limits.conf

nfsuser          soft    nproc           1025
nfsuser          hard    nproc           2026
```