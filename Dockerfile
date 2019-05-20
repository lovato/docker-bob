FROM ubuntu:18.04

LABEL name lovato/bob
LABEL version 1
LABEL maintainer="maglovato@gmail.com"

RUN apt update -qq
RUN apt install -y -qq software-properties-common
RUN apt install -y -qq build-essential
RUN apt install -y -qq wget curl
RUN apt install -y -qq vim
RUN apt install -y -qq xvfb
RUN apt install -y -qq git mercurial
RUN apt install -y -qq ssh-client
RUN apt install -y -qq zip unzip
RUN apt install -y -qq iputils-ping
RUN apt install -y -qq redis-server
RUN apt install -y -qq httpie
RUN apt install -y -qq rpm
RUN apt install -y -qq npm
RUN apt install -y -qq python3-pip
# CleanUp
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && apt autoremove -y && apt clean autoclean

RUN cd /opt && git clone https://github.com/andreafabrizi/Dropbox-Uploader.git
ENV PATH $PATH:/opt/Dropbox-Uploader

RUN export LC_ALL=en_US.UTF-8
RUN export LC_CTYPE=en_US.UTF-8
RUN export LANG=en_US.UTF-8
RUN export PYTHONIOENCODING=UTF-8

RUN pip3 install -U pip
RUN pip3 install -U hooks4git
RUN pip3 install -U awscli
RUN pip3 install -U awsebcli

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
RUN chmod -R 777 /code

# Default to UTF-8 file.encoding
ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8 \
    LANGUAGE=C.UTF-8

# WORKDIR /opt/atlassian/bitbucketci/agent/build
WORKDIR /code
CMD ["/bin/bash"]