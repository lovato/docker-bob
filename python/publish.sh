#!/bin/bash
cat ../dockerhub.token | docker login -u lovato --password-stdin
# docker image tag bob-python lovato/bob-python:latest
./test.sh
if [[ $? -ne 0 ]]; then
	echo "Tests Failed"
	exit 1
fi
docker image push lovato/bob-python:latest
