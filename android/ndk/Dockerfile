FROM lovato/bob-android

LABEL name lovato:bob-android-ndk
LABEL version 1
LABEL maintainer="maglovato@gmail.com"

RUN yes | /opt/android/tools/bin/sdkmanager --licenses && \
    /opt/android/tools/bin/sdkmanager --update && \
    /opt/android/tools/bin/sdkmanager ndk-bundle && \

# CleanUp
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && apt-get autoremove -y && apt-get clean autoclean
