FROM keto/centos:7

#
# Android SDK page:
# https://developer.android.com/studio/index.html#command-tools
#

COPY entrypoint.sh /entrypoint.sh

RUN yum -y install bind-utils git java-1.8.0-openjdk-devel unzip which xz && \
	export ANDROID_HOME=/usr/local/android-sdk && \
	export PATH="$PATH:/usr/local/flutter/bin:/usr/local/android-sdk/cmdline-tools/bin:/usr/local/rvm/bin:/usr/local/rvm/rubies/default/bin" && \
	gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB && \
	curl -sSL https://get.rvm.io | bash -s stable && \
	rvm install 2.7 && \
	curl -sL https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_2.0.3-stable.tar.xz | tar Jfx - -C /usr/local && \
	curl -sL -o /android-sdk.zip https://dl.google.com/android/repository/commandlinetools-linux-6858069_latest.zip && \
	unzip -q /android-sdk.zip -d /usr/local/android-sdk && \
	rm /android-sdk.zip && \
	yes | sdkmanager --sdk_root=/usr/local/android-sdk --licenses && \
	yes | sdkmanager --sdk_root=/usr/local/android-sdk --update && \
	yes | sdkmanager --sdk_root=/usr/local/android-sdk "build-tools;29.0.2" "patcher;v4" "platform-tools" "platforms;android-29" "sources;android-29" && \
	flutter precache && \
	flutter upgrade && \
	flutter doctor -v && \
	yum clean all && \
	rm -rf /var/cache/yum && \
	chmod 755 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["echo", "Flutter"]