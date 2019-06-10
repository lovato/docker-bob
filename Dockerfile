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

RUN pip3 install -U pip
RUN pip3 install -U hooks4git
RUN pip3 install -U awscli

# ENV AWSEBCLI $(pip search awsebcli 2>&1 | head -n 1 | cut -d'(' -f2 | cut -d')' -f1)
RUN wget https://files.pythonhosted.org/packages/ca/60/36b47119a2791a4ff3d4b4456d15545b7eed40815e64757d3d3d526323a4/awsebcli-3.15.1.tar.gz
RUN gunzip awsebcli-3.15.1.tar.gz
RUN tar xvf awsebcli-3.15.1.tar
RUN rm -f awsebcli-3.15.1.tar
RUN rm -f ./awsebcli-3.15.1/CHANGES.rst
RUN echo 'WhyAWS?Why?' > ./awsebcli-3.15.1/CHANGES.rst
RUN pip3 install -U ./awsebcli-3.15.1

RUN rm -rf /root/.cache/pip

RUN npm install -g markdownlint-cli
RUN npm install -g dockerfile_lint
RUN npm install -g travis-lint

RUN npm install -g serverless

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