## Kubernetes LEMP Setup

### Problem

The Nautilus DevOps team want to deploy a static website on Kubernetes cluster. They are going to use Nginx, phpfpm and
MySQL for the database. The team had already gathered the requirements and now they want to make this website live.
Below you can find more details:

Create some secrets for MySQL.

Create a secret named mysql-root-pass wih key/value pairs as below:

name: password
value: R00t

Create a secret named mysql-user-pass with key/value pairs as below:

name: username
value: kodekloud_gem

name: password
value: dCV3szSGNA

Create a secret named mysql-db-url with key/value pairs as below:

name: database
value: kodekloud_db4

Create a secret named mysql-host with key/value pairs as below:

name: host
value: mysql-service

Create a config map php-config for php.ini with variables_order = "EGPCS" data.

Create a deployment named lemp-wp.

Create two containers under it. First container must be nginx-php-container using image webdevops/php-nginx:
alpine-3-php7 and second container must be mysql-container from image mysql:5.6. Mount php-config configmap in nginx
container at /opt/docker/etc/php/php.ini location.

5) Add some environment variables for both containers:

MYSQL_ROOT_PASSWORD, MYSQL_DATABASE, MYSQL_USER, MYSQL_PASSWORD and MYSQL_HOST. Take their values from the secrets you
created.

6) Create a node port type service lemp-service to expose the web application, nodePort must be 30008.


7) Create a service for mysql named mysql-service and its port must be 3306.

We already have a /tmp/index.php file on jump_host server.

Copy this file into the nginx container under document root i.e /app and replace the dummy values for mysql related
variables with the environment variables you have set for mysql related parameters. Please make sure you do not hard
code the mysql related details in this file, you must use the environment variables to fetch those values.

Once done, you must be able to access this website using Website button on the top bar, please note that you should see
Connected successfully message while accessing this page.

Note: The kubectl on jump_host has been configured to work with the kubernetes cluster.

### Solution

```shell
cd /tmp
kubectl cp index.php lemp-wp-6df8f7969f-lch4c:/app -c nginx-php-container
```

- See: [Solution](./solution.yaml)
