#!/bin/bash
docker build -t docker/docker:v42 .
docker run -i -t --privileged -v ~/.brew/Cellar/docker docker/docker:v42 bash -s "service docker.io start"
