FROM lovato/bob

LABEL name lovato:bob-nodejs
LABEL version 1
LABEL maintainer="maglovato@gmail.com"

RUN npm install -g n

RUN apt-get remove -y nodejs
# CleanUp
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && apt-get autoremove -y && apt-get clean autoclean

RUN n lts
RUN npm install -g eslint
RUN npm cache clean --force
