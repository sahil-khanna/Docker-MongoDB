############################################################
# Dockerfile to build MongoDB container images
# Based on Ubuntu
# Ref: https://medium.com/@pablo_ezequiel/creating-a-docker-image-with-mongodb-4c8aa3f828f2
############################################################

# Set the base image to Ubuntu
FROM ubuntu

# File Author / Maintainer
MAINTAINER Sahil Khanna

# Update the repository sources list
RUN apt-get update -y

# Install the updated software repository
RUN apt-get upgrade -y

# Install apt-utils as this package is required by a lot of other configurations
RUN apt-get install apt-utils -y

# Install sudo
RUN apt-get install sudo -y

# Install systemd
RUN apt-get install systemd -y

# Install MongoDB
RUN apt install mongodb -y

# Create the default data directory
RUN mkdir -p /data/db

# Expose the default port
EXPOSE 27017

# Default port to execute the entrypoint (MongoDB)
# CMD ["--port 27017"]

# Set default container command
# ENTRYPOINT usr/bin/mongod

# start MongoDB server on system start
# RUN systemctl enable mongod.service