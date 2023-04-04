FROM ubuntu:18.04

LABEL name lovato/bob-serverless
LABEL version 1
LABEL maintainer="maglovato@gmail.com"

ENV DEBIAN_FRONTEND=noninteractive

RUN adduser --system serverless-user

RUN export DEBIAN_FRONTEND=noninteractive
# RUN ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime

RUN apt update -y -qq
RUN apt install -y -qq npm

# CleanUp
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && apt autoremove -y && apt clean autoclean

RUN npm install -g serverless

RUN npm cache clean --force

RUN mkdir -p /code/src
RUN mkdir -p /code/build
RUN chmod -R 777 /code

# Default to UTF-8 file.encoding
ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8 \
    LANGUAGE=C.UTF-8

WORKDIR /code
USER serverless-user
CMD ["/bin/bash"]