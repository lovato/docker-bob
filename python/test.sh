#!/bin/bash
echo
echo Testing BOB-PYTHON additions to BOB
echo ================================
echo
docker run --net=host lovato/bob-python /bin/bash -c "python2 --version && python3.6 --version && python3.7 --version && python3.8 --version && python3.9 --version && python3.10 --version && python3.11 --version && pipenv --version"
