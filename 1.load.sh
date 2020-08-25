#!/bin/bash

cat docker/systools.tgz | gunzip | docker load
cat docker/gitlab-ce.tgz | gunzip | docker load
