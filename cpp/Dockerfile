FROM lovato/bob

LABEL name lovato/bob-cpp
LABEL version 1
LABEL maintainer="maglovato@gmail.com"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update -qq
RUN apt install -y -qq --no-install-recommends gcc-multilib
RUN apt install -y -qq --no-install-recommends g++-multilib cmake

# CleanUp
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && apt autoremove -y && apt clean autoclean

RUN pip3 install -U conan

RUN rm -rf /root/.cache/pip
