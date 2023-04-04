FROM lovato/bob

LABEL name lovato/bob-nodejs
LABEL version 1
LABEL maintainer="maglovato@gmail.com"

ENV DEBIAN_FRONTEND=noninteractive

RUN npm install -g n

RUN apt remove -y -qq nodejs
# CleanUp
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && apt autoremove -y && apt clean autoclean

RUN n lts
RUN npm install -g eslint

# https://artillery.io/
RUN npm install -g artillery --allow-root --unsafe-perm=true

RUN npm cache clean --force
