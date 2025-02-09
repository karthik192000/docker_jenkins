#!/bin/bash
docker run -d --restart=always --name docker-socket-proxy \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -p 2375:2375 \
  --env CONTAINERS=1 \
  --env POST=1 \
  --env SYSTEM=1 \
  --env IMAGES=1 \
  --env BUILD=1 \
  --env NETWORKS=1 \
  --env EXEC=1 \
  --env TASKS=1 \
  tecnativa/docker-socket-proxy