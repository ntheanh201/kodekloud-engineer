## Docker Node App

### Problem

There is a requirement to Dockerize a Node app and to deploy the same on App Server 1. Under /node_app directory on App
Server 1, we have already placed a [package.json](./package.json) file that describes the app dependencies and server.js file that defines
a web app framework.

Create a Dockerfile (name is case sensitive) under /node_app directory:

Use any node image as the base image.
Install the dependencies using [package.json](./package.json) file.
Use [server.js](./server.js) in the CMD.
Expose port 8087.

The build image should be named as nautilus/node-web-app.

Now run a container named nodeapp_nautilus using this image.

Map the container port 8087 with the host port 8095.

. Once deployed, you can test the app using a curl command on App Server 1:

curl http://localhost:8095

### Solution

- Access App Server 1 via SSH
- Switch to root user: `sudo su`
- Create Dockerfile: [Dockerfile](./Dockerfile)
- Build image: `docker build -t nautilus/node-web-app .`
- Run the container: `docker run -p 8095:8087 --name nodeapp_nautilus -d nautilus/node-web-app`
- Check the result: `curl http://localhost:8095`