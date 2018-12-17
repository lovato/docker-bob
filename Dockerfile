FROM ubuntu:18.04

LABEL name lovato:bob
LABEL version 1
LABEL maintainer="maglovato@gmail.com"

RUN apt-get update
RUN apt-get install -y software-properties-common
RUN apt-get install -y build-essential
RUN apt-get install -y wget curl
RUN apt-get install -y vim
RUN apt-get install -y xvfb
RUN apt-get install -y git mercurial
RUN apt-get install -y ssh-client
RUN apt-get install -y zip unzip
RUN apt-get install -y iputils-ping
RUN apt-get install -y redis-server
RUN apt-get install -y httpie
RUN apt-get install -y rpm
RUN apt-get install -y npm
RUN apt-get install -y python3-pip
# CleanUp
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && apt-get autoremove -y && apt-get clean autoclean

RUN cd /opt && git clone https://github.com/andreafabrizi/Dropbox-Uploader.git
ENV PATH $PATH:/opt/Dropbox-Uploader

RUN pip3 install -U pip
RUN pip3 install -U hooks4git
RUN pip3 install -U awscli

RUN rm -rf /root/.cache/pip

RUN npm install -g markdownlint-cli
RUN npm install -g dockerfile_lint
RUN npm install -g travis-lint

RUN npm cache clean --force

# Xvfb provide an in-memory X-session for tests that require a GUI
ENV DISPLAY=:99

# Create dirs and users for Bitbucket Pipelines
RUN mkdir -p /opt/atlassian/bitbucketci/agent/build \
    && sed -i '/[ -z \"PS1\" ] && return/a\\ncase $- in\n*i*) ;;\n*) return;;\nesac' /root/.bashrc \
    && useradd --create-home --shell /bin/bash --uid 1000 pipelines

RUN mkdir -p /code/src
RUN mkdir -p /code/build

# WORKDIR /opt/atlassian/bitbucketci/agent/build
WORKDIR /code
ENTRYPOINT /bin/bash