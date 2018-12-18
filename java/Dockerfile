FROM lovato/bob

LABEL name lovato:bob-java
LABEL version 1
LABEL maintainer="maglovato@gmail.com"

# use WebUpd8 PPA
RUN add-apt-repository ppa:webupd8team/java -y

RUN apt-get update
# RUN apt-get install -y openjdk-8-jdk

# automatically accept the Oracle license
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN apt-get install -y oracle-java8-installer
RUN apt-get install -y oracle-java8-set-default

RUN apt-get install -y maven
RUN apt-get install -y ant
# CleanUp
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && apt-get autoremove -y && apt-get clean autoclean

# ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
ENV ANT_HOME="/usr/share/ant"
ENV MAVEN_HOME="/usr/share/maven"

ENV PATH $PATH:$ANT_HOME/bin:$MAVEN_HOME/bin
