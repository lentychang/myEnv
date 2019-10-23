#!/bin/bash
apt-get clean && \
    apt-get update && apt-get -y install \
    usbutils \
    pciutils

# install chewing input method
apt-get purge -y ibus && apt-get install -y fcitx fcitx-qimpanel fctix-chewing
locale-gen zh_TW.UTF-8

