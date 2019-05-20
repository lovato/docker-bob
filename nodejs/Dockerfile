FROM lovato/bob

LABEL name lovato/bob-nodejs
LABEL version 1
LABEL maintainer="maglovato@gmail.com"

RUN npm install -g n

RUN apt remove -y -qq nodejs
# CleanUp
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && apt autoremove -y && apt clean autoclean

RUN n lts
RUN npm install -g eslint
RUN npm cache clean --force
