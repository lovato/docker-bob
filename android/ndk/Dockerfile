FROM lovato/bob-android

LABEL name lovato/bob-android-ndk
LABEL version 1
LABEL maintainer="maglovato@gmail.com"

RUN yes | /opt/android/tools/bin/sdkmanager --licenses && \
    /opt/android/tools/bin/sdkmanager --update && \
    /opt/android/tools/bin/sdkmanager ndk-bundle
