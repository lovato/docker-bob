#!/bin/bash
cd $(dirname $0)
echo Testing BOB
echo
./run.sh "lsb_release -a && pip --version && echo -n 'npm ' && npm --version"
echo