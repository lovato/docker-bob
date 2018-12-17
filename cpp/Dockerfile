FROM lovato/bob

LABEL name lovato:bob-cpp
LABEL version 1
LABEL maintainer="maglovato@gmail.com"

RUN apt-get update
RUN apt-get install -y gcc-multilib
RUN apt-get install -y g++-multilib cmake

# CleanUp
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && apt-get autoremove -y && apt-get clean autoclean

RUN pip3 install -U conan

RUN rm -rf /root/.cache/pip
