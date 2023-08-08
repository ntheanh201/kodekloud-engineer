## Update an Existing Deployment in Kubernetes

### Problem

There is an application deployed on Kubernetes cluster. Recently, the Nautilus application development team developed a
new version of the application that needs to be deployed now. As per new updates some new changes need to be made in
this existing setup. So update the deployment and service as per details mentioned below:

We already have a deployment named nginx-deployment and service named nginx-service. Some changes need to be made in
this deployment and service, make sure not to delete the deployment and service.

1.) Change the service nodeport from 30008 to 32165

2.) Change the replicas count from 1 to 5

3.) Change the image from nginx:1.19 to nginx:latest

Note: The kubectl utility on jump_host has been configured to work with the kubernetes cluster.

### Solution

```shell
kubectl patch svc nginx-service --type='json' -p '[{"op":"replace","path":"/spec/ports/0/nodePort","value":32165}]'
kubectl patch deploy nginx-deployment --type='json' -p '[{"op":"replace","path":"/spec/replicas","value":5},{"op":"replace","path":"/spec/template/spec/containers/0/image","value":"nginx:latest"}]'
```

- See: [Solution](./solution.yaml)
