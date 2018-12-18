FROM lovato/bob

LABEL name lovato/bob-python
LABEL version 1
LABEL maintainer="maglovato@gmail.com"

RUN pip3 install -U vex
RUN pip3 install -U pipenv
RUN pip3 install -U flake8

RUN rm -rf /root/.cache/pip
