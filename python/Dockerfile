FROM lovato/bob

LABEL name lovato/bob-python
LABEL version 1
LABEL maintainer="maglovato@gmail.com"

RUN pip3 install -U vex
RUN pip3 install -U pipenv
RUN pip3 install -U flake8
RUN pip3 install -U twine

# Installs other Python Versions
RUN add-apt-repository -y ppa:deadsnakes/ppa
ENV DEBIAN_FRONTEND=noninteractive
RUN apt install -y -qq python3.6-distutils
RUN apt install -y -qq python3.7
RUN apt install -y -qq python3.7-distutils
RUN apt install -y -qq python3.8
RUN apt install -y -qq python3.8-distutils
RUN apt install -y -qq python3.9
RUN apt install -y -qq python3.9-distutils
RUN apt install -y -qq python3.10
RUN apt install -y -qq python3.10-distutils
RUN apt install -y -qq python3.11
RUN apt install -y -qq python3.11-distutils

RUN rm -rf /root/.cache/pip
