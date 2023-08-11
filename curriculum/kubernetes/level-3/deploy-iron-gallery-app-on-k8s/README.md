## Deploy Iron Gallery App on Kubernetes

### Problem

There is an iron gallery app that the Nautilus DevOps team was developing. They have recently customized the app and are
going to deploy the same on the Kubernetes cluster. Below you can find more details:

    Create a namespace iron-namespace-datacenter

    Create a deployment iron-gallery-deployment-datacenter for iron gallery under the same namespace you created.

    :- Labels run should be iron-gallery.

    :- Replicas count should be 1.

    :- Selector's matchLabels run should be iron-gallery.

    :- Template labels run should be iron-gallery under metadata.

    :- The container should be named as iron-gallery-container-datacenter, use kodekloud/irongallery:2.0 image ( use exact image name / tag ).

    :- Resources limits for memory should be 100Mi and for CPU should be 50m.

    :- First volumeMount name should be config, its mountPath should be /usr/share/nginx/html/data.

    :- Second volumeMount name should be images, its mountPath should be /usr/share/nginx/html/uploads.

    :- First volume name should be config and give it emptyDir and second volume name should be images, also give it emptyDir.

    Create a deployment iron-db-deployment-datacenter for iron db under the same namespace.

    :- Labels db should be mariadb.

    :- Replicas count should be 1.

    :- Selector's matchLabels db should be mariadb.

    :- Template labels db should be mariadb under metadata.

    :- The container name should be iron-db-container-datacenter, use kodekloud/irondb:2.0 image ( use exact image name / tag ).

    :- Define environment, set MYSQL_DATABASE its value should be database_apache, set MYSQL_ROOT_PASSWORD and MYSQL_PASSWORD value should be with some complex passwords for DB connections, and MYSQL_USER value should be any custom user ( except root ).

    :- Volume mount name should be db and its mountPath should be /var/lib/mysql. Volume name should be db and give it an emptyDir.

    Create a service for iron db which should be named iron-db-service-datacenter under the same namespace. Configure spec as selector's db should be mariadb. Protocol should be TCP, port and targetPort should be 3306 and its type should be ClusterIP.

    Create a service for iron gallery which should be named iron-gallery-service-datacenter under the same namespace. Configure spec as selector's run should be iron-gallery. Protocol should be TCP, port and targetPort should be 80, nodePort should be 32678 and its type should be NodePort.

Note:

    We don't need to make connection b/w database and front-end now, if the installation page is coming up it should be enough for now.

    The kubectl on jump_host has been configured to work with the kubernetes cluster.

### Solution

```shell
kubectl set image deploy/python-deployment-devops python-container-devops=poroko/flask-demo-app
```

- See: [Solution](./solution.yaml)
