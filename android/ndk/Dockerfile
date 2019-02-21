FROM lovato/bob-android

LABEL name lovato/bob-android-ndk
LABEL version 1
LABEL maintainer="maglovato@gmail.com"

RUN yes | /opt/android/tools/bin/sdkmanager --licenses
RUN /opt/android/tools/bin/sdkmanager --update
RUN /opt/android/tools/bin/sdkmanager ndk-bundle
# RUN /opt/android/tools/bin/sdkmanager "cmake;3.6.4111459"
RUN /opt/android/tools/bin/sdkmanager "cmake;3.10.2.4988404"