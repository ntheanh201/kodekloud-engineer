## Fix Issue with VolumeMounts in Kubernetes

### Problem

We deployed a Nginx and PHP-FPM based setup on Kubernetes cluster last week and it had been working fine so far. This
morning one of the team members made a change somewhere which caused some issues, and it stopped working. Please look
into the issue and fix it:

The pod name is nginx-phpfpm and configmap name is nginx-config. Figure out the issue and fix the same.

Once issue is fixed, copy /home/thor/index.php file from the jump host to the nginx-container under nginx document root
and you should be able to access the website using Website button on top bar.

Note: The kubectl utility on jump_host has been configured to work with the kubernetes cluster.

### Solution

```shell
kubectl cp /home/thor/index.php nginx-phpfpm:/var/www/html/index.php
```

- See: [Solution](./solution.yaml)
