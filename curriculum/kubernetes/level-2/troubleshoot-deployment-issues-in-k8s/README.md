## Troubleshoot Deployment issues in Kubernetes

### Problem

Last week, the Nautilus DevOps team deployed a redis app on Kubernetes cluster, which was working fine so far. This
morning one of the team members was making some changes in this existing setup, but he made some mistakes and the app
went down. We need to fix this as soon as possible. Please take a look.

The deployment name is redis-deployment. The pods are not in running state right now, so please look into the issue and
fix the same.

Note: The kubectl utility on jump_host has been configured to work with the kubernetes cluster.

### Solution

```shell
kubectl patch deploy/redis-deployment --type='json' -p '[{"op":"replace","path":"/spec/template/spec/volumes/1/configMap/name","value":"redis-config"}]'
kubectl patch deploy/redis-deployment --type='json' -p '[{"op":"replace","path":"/spec/template/spec/containers/0/image","value":"redis:alpine"}]'
```