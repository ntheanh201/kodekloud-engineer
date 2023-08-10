## Persistent Volumes in Kubernetes

### Problem

The Nautilus DevOps team is working on a Kubernetes template to deploy a web application on the cluster. There are some
requirements to create/use persistent volumes to store the application code, and the template needs to be designed
accordingly. Please find more details below:

    Create a PersistentVolume named as pv-datacenter. Configure the spec as storage class should be manual, set capacity to 4Gi, set access mode to ReadWriteOnce, volume type should be hostPath and set path to /mnt/finance (this directory is already created, you might not be able to access it directly, so you need not to worry about it).

    Create a PersistentVolumeClaim named as pvc-datacenter. Configure the spec as storage class should be manual, request 2Gi of the storage, set access mode to ReadWriteOnce.

    Create a pod named as pod-datacenter, mount the persistent volume you created with claim name pvc-datacenter at document root of the web server, the container within the pod should be named as container-datacenter using image httpd with latest tag only (remember to mention the tag i.e httpd:latest).

    Create a node port type service named web-datacenter using node port 30008 to expose the web server running within the pod.

Note: The kubectl utility on jump_host has been configured to work with the kubernetes cluster.

### Solution

- See: [Solution](./solution.yaml)
