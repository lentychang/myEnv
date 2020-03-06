#!/bin/bash
sudo apt install -y openjdk-8-jre openjdk-8-jdk
sudo apt -y install libstdc++6:i386 libgcc1:i386 zlib1g:i386 libncurses5:i386

echo "Check your java --version, it should be version 8"
echo "if not, use update-alternative --config java to switch version"


mkdir android-sdk
cd android-sdk
wget https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip
unzip sdk-tools-linux-4333796.unzip
cd tools/bin
./sdkmanager --install "cmake;3.10.2.4988404"
./sdkmanager --install "platforms;android-28" "ndk-bundle" "build-tools;28.0.3" "platform-tools" "tools"


# configure
# jdk location
# /usr/lib/jvm/java-8-openjdk-amd64

# Android SDK location
# ......../android-sdk

# Android NDK Location
# ......../android-sdk/ndk-bundle
