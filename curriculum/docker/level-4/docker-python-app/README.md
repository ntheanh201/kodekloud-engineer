## Docker Python App

### Problem

A python app needed to be Dockerized, and then it needs to be deployed on App Server 3. We have already copied a
requirements.txt file (having the app dependencies) under /python_app/src/ directory on App Server 3. Further complete
this task as per details mentioned below:

Create a Dockerfile under /python_app directory:

Use any python image as the base image.
Install the dependencies using requirements.txt file.
Expose the port 8087.
Run the server.py script using CMD.

Build an image named nautilus/python-app using this Dockerfile.

Once image is built, create a container named pythonapp_nautilus:

Map port 8087 of the container to the host port 8099.

Once deployed, you can test the app using curl command on App Server 3.

curl http://localhost:8099/

### Solution

- Access App Server 3 via SSH
- Switch to root user: `sudo su`
- Create Dockerfile: [Dockerfile](Dockerfile)
- Build image: `docker build -t nautilus/python-app .`
- Run the container: `docker run -p 8099:8087 --name pythonapp_nautilus -d nautilus/python-app`
- Check the result: `curl http://localhost:8099`