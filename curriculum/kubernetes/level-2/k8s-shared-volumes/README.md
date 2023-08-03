## Kubernetes Shared Volumes

### Problem

We are working on an application that will be deployed on multiple containers within a pod on Kubernetes cluster. There
is a requirement to share a volume among the containers to save some temporary data. The Nautilus DevOps team is
developing a similar template to replicate the scenario. Below you can find more details about it.

Create a pod named volume-share-nautilus.

For the first container, use image ubuntu with latest tag only and remember to mention the tag i.e ubuntu:latest,
container should be named as volume-container-nautilus-1, and run a sleep command for it so that it remains in running
state. Volume volume-share should be mounted at path /tmp/official.

For the second container, use image ubuntu with the latest tag only and remember to mention the tag i.e ubuntu:latest,
container should be named as volume-container-nautilus-2, and again run a sleep command for it so that it remains in
running state. Volume volume-share should be mounted at path /tmp/demo.

Volume name should be volume-share of type emptyDir.

After creating the pod, exec into the first container i.e volume-container-nautilus-1, and just for testing create a
file official.txt with any content under the mounted path of first container i.e /tmp/official.

The file official.txt should be present under the mounted path /tmp/games on the second container
volume-container-nautilus-2 as well, since they are using a shared volume.

Note: The kubectl utility on jump_host has been configured to work with the kubernetes cluster.

### Solution

- See: [Solution](./solution.yaml)
