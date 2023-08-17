## Kubernetes Nginx and PhpFPM Setup

### Problem

We need to deploy a Drupal application on Kubernetes cluster. The Nautilus application development team want to setup a fresh Drupal as they will do the installation on their own. Below you can find the requirements, they have shared with us.


1) Configure a persistent volume drupal-mysql-pv with hostPath = /drupal-mysql-data (/drupal-mysql-data directory already exists on the worker Node i.e jump host), 5Gi of storage and ReadWriteOnce access mode.

2) Configure one PersistentVolumeClaim named drupal-mysql-pvc with storage request of 3Gi and ReadWriteOnce access mode.

3) Create a deployment drupal-mysql with 1 replica, use mysql:5.7 image. Mount the claimed PVC at /var/lib/mysql.

4) Create a deployment drupal with 1 replica and use drupal:8.6 image.

4) Create a NodePort type service which should be named as drupal-service and nodePort should be 30095.

5) Create a service drupal-mysql-service to expose mysql deployment on port 3306.

6) Set rest of the configration for deployments, services, secrets etc as per your preferences. At the end you should be able to access the Drupal installation page by clicking on App button.

Note: The kubectl on jump_host has been configured to work with the kubernetes cluster.


### Solution

```shell
kubectl cp /opt/index.php nginx-phpfpm:/var/www/html -c nginx-container
kubectl  exec --stdin --tty nginx-phpfpm -c nginx-container -- /bin/bash
```

- See: [Solution](./solution.yaml)
