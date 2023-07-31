## ReplicationController in Kubernetes

### Problem

The Nautilus DevOps team wants to create a ReplicationController to deploy several pods. They are going to deploy
applications on these pods, these applications need highly available infrastructure. Below you can find exact details,
create the ReplicationController accordingly.

Create a ReplicationController using nginx image, preferably with latest tag, and name it as
nginx-replicationcontroller.

Labels app should be nginx_app, and labels type should be front-end. The container should be named as nginx-container
and also make sure replica counts are 3.

All pods should be running state after deployment.

Note: The kubectl utility on jump_host has been configured to work with the kubernetes cluster.

### Solution

- See: [Solution](./solution.yaml)
