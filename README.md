
## INTRODUCTION

A dockerfile to kickstart a MongoDB container for early developers

## USAGE

**Install docker**
Download and install docker from [Docker Desktop](https://www.docker.com/products/docker-desktop)

**Build image**
Build the docker image with MongoDB

    docker build -t mongodb .

**Create Container**
Create a container from the MongoDB image

    docker run -itd --net=host --name=mongodb_container mongodb

**Restart MongoDB in the container**
At times, MongoDB isn't in a stable state. Restarting often solves the problem

    docker exec -it mongodb_container service mongodb restart
