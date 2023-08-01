## Docker Delete Container

### Problem

One of the Nautilus project developers created a container on App Server 2. This container was created for testing only
and now we need to delete it. Accomplish this task as per details given below:

Delete a container named kke-container, its running on App Server 2 in Stratos DC.

### Solution

```shell
docker stop kke-container
docker rm kke-container
```