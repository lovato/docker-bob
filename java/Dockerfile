FROM lovato/bob

LABEL name lovato/bob-java
LABEL version 1
LABEL maintainer="maglovato@gmail.com"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update -qq
RUN apt install -y -qq openjdk-17-jdk openjdk-17-jre

RUN apt install -y -qq --no-install-recommends maven
RUN apt install -y -qq --no-install-recommends ant
# CleanUp
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && apt autoremove -y && apt clean autoclean

ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
ENV ANT_HOME="/usr/share/ant"
ENV MAVEN_HOME="/usr/share/maven"

ENV PATH $PATH:$ANT_HOME/bin:$MAVEN_HOME/bin
