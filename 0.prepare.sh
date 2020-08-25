#!/bin/bash

TAGS=${TAGS:-"latest"}

mkdir -p docker/

# Prepare admin tools.
docker build -t systools systools/
docker save systools | gzip > docker/systools.tgz

docker pull gitlab/gitlab-ce:${TAGS}
docker save gitlab/gitlab-ce:${TAGS} | gzip > docker/gitlab-ce.tgz

# set docker-compose.yml
