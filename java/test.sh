#!/bin/bash
echo
echo Testing BOB-JAVA additions to BOB
echo ================================
echo
docker run --net=host lovato/bob-java /bin/bash -c "java -version"
