#!/bin/bash
cat ../dockerhub.token | docker login -u lovato --password-stdin
docker image tag bob-python lovato/bob-python:latest
./test.sh || echo "Tests Failed" && exit 1
docker image push lovato/bob-python:latest