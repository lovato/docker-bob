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
        python3-pip \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && apt-get autoremove -y \
    && apt-get clean

RUN pip3 install -U \
    pip \
    hooks4git \
    vex \
    flake8

# Install nvm with node and npm
ENV NODE_VERSION=8.9.4 \
    NVM_DIR=/root/.nvm \
    NVM_VERSION=0.33.8

RUN curl https://raw.githubusercontent.com/creationix/nvm/v$NVM_VERSION/install.sh | bash \
    && . $NVM_DIR/nvm.sh \
    && nvm install $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && nvm use default

# Set node path
ENV NODE_PATH=$NVM_DIR/v$NODE_VERSION/lib/node_modules

RUN npm install -g \
    npm \
    eslint \
    markdownlint-cli \
    dockerfile_lint

ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

# Default to UTF-8 file.encoding
ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8 \
    LANGUAGE=C.UTF-8

# Xvfb provide an in-memory X-session for tests that require a GUI
ENV DISPLAY=:99

# Set the path.
ENV PATH=$NVM_DIR:$NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH

# Create dirs and users
RUN mkdir -p /opt/atlassian/bitbucketci/agent/build \
    && sed -i '/[ -z \"PS1\" ] && return/a\\ncase $- in\n*i*) ;;\n*) return;;\nesac' /root/.bashrc \
    && useradd --create-home --shell /bin/bash --uid 1000 pipelines

RUN ln -s /usr/bin/python3 /usr/bin/python
RUN ln -s /usr/bin/pip3 /usr/bin/pip

WORKDIR /opt/atlassian/bitbucketci/agent/build
ENTRYPOINT /bin/bash