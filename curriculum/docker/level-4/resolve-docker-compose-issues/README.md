## Resolve Docker Compose Issues

### Problem

The Nautilus DevOps team is working to deploy one of the applications on App Server 2 in Stratos DC. Due to a
misconfiguration in the docker compose file, the deployment is failing. We would like you to take a look into it to
identify and fix the issues. More details can be found below:

a. docker-compose.yml file is present on App Server 2 under /opt/docker directory.

b. Try to run the same and make sure it works fine.

c. Please do not change the container names being used. Also, do not update or alter any other valid config settings in
the compose file or any other relevant data that can cause app failure.

Note: Please note that once you click on FINISH button all existing running/stopped containers will be destroyed, and
your compose will be run.

### Solution

- First, check the original docker-compose.yml under /opt/docker on App Server 2. We can see that there's a syntax problem with "port". Update to "ports"
- Run the docker-compose file to see what happen next: `docker-compose up`
- See the next problem, that's: "ERROR: Service 'web' depends on service 'redis' which is undefined.". We can see the redis service is redis_app -> change depends_on: redis -> redis_app.

```shell
    [root@stapp02 docker]# docker-compose up
    Creating network "docker_default" with the default driver
    Pulling redis_app (redis:)...
    latest: Pulling from library/redis
    360eba32fa65: Pull complete
    64b323c8825b: Pull complete
    383536099eae: Pull complete
    e3f0c12dcc8e: Pull complete
    2d2142a35b4d: Pull complete
    b4cada01e6a7: Pull complete
    Pulling web (./app:)...
    ERROR: invalid reference format
```

- The format for image is wrong, we can see the Dockerfile under app folder -> update Docker compose to use that Dockerfile
- DONE

- Check with `curl localhost:5000` -> This Compose/Flask demo has been viewed 1 time(s)