FROM node:lts-alpine

LABEL maintainer="scott BROD <scott@thebrod.com>"

# Install a basic SSH server
    run node --version

# Add user jenkins to the image
#   adduser --quiet jenkins && \
# Set password for the jenkins user (you may want to alter this).
#    echo "jenkins:jenkins" | chpasswd && \
#    mkdir /home/jenkins/.m2

# RUN chown -R jenkins:jenkins /home/jenkins/.m2/ && 

RUN npm config set @brightside:registry https://api.bintray.com/npm/ca/brightside
RUN npm install -g @brightside/core@next
