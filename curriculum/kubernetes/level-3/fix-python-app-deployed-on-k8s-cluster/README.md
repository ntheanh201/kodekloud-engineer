## Fix Python App Deployed on Kubernetes Cluster

### Problem

One of the DevOps engineers was trying to deploy a python app on Kubernetes cluster. Unfortunately, due to some
mis-configuration, the application is not coming up. Please take a look into it and fix the issues. Application should
be accessible on the specified nodePort.

    The deployment name is python-deployment-devops, its using poroko/flask-demo-appimage. The deployment and service of this app is already deployed.

    nodePort should be 32345 and targetPort should be python flask app's default port.

Note: The kubectl on jump_host has been configured to work with the kubernetes cluster

### Solution

- Get yaml version of deployment: `kubectl get deploy python-deployment-nautilus -o yaml`

- See: [Solution](./solution.yaml)
