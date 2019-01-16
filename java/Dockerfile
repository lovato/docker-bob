FROM lovato/bob

LABEL name lovato/bob-java
LABEL version 1
LABEL maintainer="maglovato@gmail.com"

RUN apt-get update -qq
RUN apt-get install -y openjdk-8-jdk

RUN apt-get install -y -qq --no-install-recommends maven
RUN apt-get install -y -qq --no-install-recommends ant
# CleanUp
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && apt-get autoremove -y && apt-get clean autoclean

ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
ENV ANT_HOME="/usr/share/ant"
ENV MAVEN_HOME="/usr/share/maven"

ENV PATH $PATH:$ANT_HOME/bin:$MAVEN_HOME/bin
