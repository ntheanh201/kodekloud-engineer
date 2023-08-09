## Deploy Node App on Kubernetes

### Problem

The Nautilus development team has completed development of one of the node applications, which they are planning to
deploy on a Kubernetes cluster. They recently had a meeting with the DevOps team to share their requirements. Based on
that, the DevOps team has listed out the exact requirements to deploy the app. Find below more details:

    Create a deployment using gcr.io/kodekloud/centos-ssh-enabled:node image, replica count must be 2.

    Create a service to expose this app, the service type must be NodePort, targetPort must be 8080 and nodePort should be 30012.

    Make sure all the pods are in Running state after the deployment.

    You can check the application by clicking on NodeApp button on top bar.

You can use any labels as per your choice.

Note: The kubectl on jump_host has been configured to work with the kubernetes cluster.

### Solution

- See: [Solution](./solution.yaml)
