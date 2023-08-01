## Docker Container Issue

### Problem

There is a static website running within a container named nautilus, this container is running on App Server 1.
Suddenly, we started facing some issues with the static website on App Server 1. Look into the issue to fix the same,
you can find more details below:

Container's volume /usr/local/apache2/htdocs is mapped with the host's volume /var/www/html.

The website should run on host port 8080 on App Server 1 i.e command curl http://localhost:8080/ should work on App
Server 1.

### Solution

```shell
docker run -d -it --name nautilus --mount type=bind,source=/var/www/html,target=/usr/local/apache2/htdocs -p 8080:80 httpd
```