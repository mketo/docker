#!/bin/bash

export ANDROID_HOME=/usr/local/android-sdk
export ANDROID_SDK_ROOT=/usr/local/android-sdk
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PATH="$PATH:/usr/local/flutter/bin:/usr/local/android-sdk/cmdline-tools/bin:/usr/local/rvm/bin:/usr/local/rvm/rubies/default/bin"

source /etc/profile.d/rvm.sh
rvm alias create default 2.7
rvm use 2.7 --default

exec "$@"
