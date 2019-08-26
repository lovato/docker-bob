FROM lovato/bob-java

LABEL name lovato/bob-android
LABEL version 1
LABEL maintainer="maglovato@gmail.com"

ENV ANDROID_SDK_URL="https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip"
ENV ANDROID_BUILD_TOOLS_VERSION="build-tools-29.0.0,build-tools-28.0.2"
ENV ANDROID_APIS="android-19,android-20,android-21,android-22,android-23,android-24,android-25,android-26,android-27,android-28,android-29"
ENV GRADLE_HOME="/usr/share/gradle"
ENV ANDROID_HOME="/opt/android"

ENV PATH $PATH:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/build-tools/$ANDROID_BUILD_TOOLS_VERSION:$GRADLE_HOME/bin

RUN mkdir ~/.android
RUN touch ~/.android/repositories.cfg
RUN dpkg --add-architecture i386
RUN apt update -qq
RUN apt install -y -qq gradle
RUN apt install -y -qq libncurses5:i386
RUN apt install -y -qq libstdc++6:i386
RUN apt install -y -qq zlib1g:i386
RUN mkdir /opt/android
RUN wget -nv -O /opt/android/tools.zip ${ANDROID_SDK_URL}
RUN cd /opt/android/ && unzip tools.zip
RUN rm /opt/android/tools.zip
RUN yes | /opt/android/tools/bin/sdkmanager --licenses
# RUN /opt/android/tools/bin/sdkmanager build-tools;${ANDROID_BUILD_TOOLS_VERSION} platforms;${ANDROID_APIS}
RUN android update sdk --use-sdk-wrapper -a -u -t platform-tools,${ANDROID_APIS},${ANDROID_BUILD_TOOLS_VERSION}
RUN /opt/android/tools/bin/sdkmanager --update

# Installing specific gradle versions to speedup builds
RUN gradle wrapper --gradle-version=4.6;
RUN ./gradlew
RUN gradle wrapper --gradle-version=5.5; 
RUN ./gradlew 

# CleanUp
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && apt autoremove -y && apt clean autoclean
