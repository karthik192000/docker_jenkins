#!/bin/bash
docker run -p 8080:8080 -p 50000:50000 --user root --name jenkins -e DOCKER_TLS_VERIFY=1 -e DOCKER_HOST=tcp://docker:2376 -e DOCKER_CERT_PATH=/certs/client -v /mnt/jenkins-data:/var/jenkins_home -v /mnt/jenkins-docker-certs:/certs/client:ro --privileged jenkins/jenkins:jdk17
