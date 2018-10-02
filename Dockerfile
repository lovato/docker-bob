FROM ubuntu:18.04

LABEL name lovato:bob
LABEL version 1
LABEL maintainer="maglovato@gmail.com"

RUN apt-get update \
    && apt-get install -y \
        software-properties-common \
        build-essential \
        wget \
        xvfb \
        curl \
        git \
        mercurial \
        maven \
        openjdk-8-jdk \
        ant \
        ssh-client \
        zip \
        unzip \
        iputils-ping \
        redis-server \
        httpie \
        rpm \
        npm \
        python3-pip \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && apt-get autoremove -y \
    && apt-get clean

RUN pip3 install -U \
    pip \
    hooks4git \
    vex \
    flake8 \
    awscli

RUN npm install -g n && apt-get remove -y nodejs && n lts

RUN npm install -g \
    npm \
    eslint \
    markdownlint-cli \
    dockerfile_lint \
    travis-lint

ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

# Default to UTF-8 file.encoding
ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8 \
    LANGUAGE=C.UTF-8

# Xvfb provide an in-memory X-session for tests that require a GUI
ENV DISPLAY=:99

# Create dirs and users
RUN mkdir -p /opt/atlassian/bitbucketci/agent/build \
    && sed -i '/[ -z \"PS1\" ] && return/a\\ncase $- in\n*i*) ;;\n*) return;;\nesac' /root/.bashrc \
    && useradd --create-home --shell /bin/bash --uid 1000 pipelines

WORKDIR /opt/atlassian/bitbucketci/agent/build
ENTRYPOINT /bin/bash