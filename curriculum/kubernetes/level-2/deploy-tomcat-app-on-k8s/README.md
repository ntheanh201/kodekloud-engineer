## Deploy Tomcat App on Kubernetes

### Problem

A new java-based application is ready to be deployed on a Kubernetes cluster. The development team had a meeting with
the DevOps team to share the requirements and application scope. The team is ready to setup an application stack for it
under their existing cluster. Below you can find the details for this:

    Create a namespace named tomcat-namespace-nautilus.

    Create a deployment for tomcat app which should be named as tomcat-deployment-nautilus under the same namespace you created. Replica count should be 1, the container should be named as tomcat-container-nautilus, its image should be gcr.io/kodekloud/centos-ssh-enabled:tomcat and its container port should be 8080.

    Create a service for tomcat app which should be named as tomcat-service-nautilus under the same namespace you created. Service type should be NodePort and nodePort should be 32227.

Before clicking on Check button please make sure the application is up and running.

You can use any labels as per your choice.

Note: The kubectl on jump_host has been configured to work with the kubernetes cluster.

### Solution

- See: [Solution](./solution.yaml)
