#!/bin/bash

mkdir -p docker/

# Prepare admin tools.
docker build -t systools systools/
docker save systools | gzip > docker/systools.tgz

# set docker-compose.yml
