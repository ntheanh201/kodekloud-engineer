## Rolling Updates And Rolling Back Deployments in Kubernetes

### Problem

There is a production deployment planned for next week. The Nautilus DevOps team wants to test the deployment update and
rollback on Dev environment first so that they can identify the risks in advance. Below you can find more details about
the plan they want to execute.

    Create a namespace xfusion. Create a deployment called httpd-deploy under this new namespace, It should have one container called httpd, use httpd:2.4.27 image and 4 replicas. The deployment should use RollingUpdate strategy with maxSurge=1, and maxUnavailable=2. Also create a NodePort type service named httpd-service and expose the deployment on nodePort: 30008.

    Now upgrade the deployment to version httpd:2.4.43 using a rolling update.

    Finally, once all pods are updated undo the recent update and roll back to the previous/original version.

Note: The kubectl utility on jump_host has been configured to work with the kubernetes cluster.

### Solution

```shell
kubectl set image deploy/httpd-deploy httpd=httpd:2.4.43 -n xfusion 
kubectl rollout history deploy/httpd-deploy -n xfusion
kubectl rollout undo deploy/httpd-deploy -n xfusion
```

- See: [Solution](./solution.yaml)
