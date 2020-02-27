#!/bin/bash
apt install build-essential android-sdk default-jdk-headless

if [ ! -d $HOME/opt ];then
	mkdir ~/opt
fi
cd ~/opt
mkdir andorid-devTool
cd android-devTool
wget https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip
unzip sdk-tools-linux-4333796.zip
cd tools/bin


# Android version: API level version
# i.e. Android 8.0.0: API level 26
sdkmanager --verbose --licenses
sdkmanager --update
sdkmanager "platforms;android-28" "ndk-bundle" "build-tools;28.0.3" "platform-tools" "tools"
