#!/bin/bash

# If you are using WSL, remember to set lanuage for non-unicode-program to zh_tw in the following path: conrol-panel/clock-and-region/region/administrative/language-for-non-unicode-program 

# install language pack and font
sudo apt install -y language-pack-zh-hant language-pack-gnome-zh-hant xfonts-wqy fonts-wqy-microhei fonts-wqy-zenhei

export LANG=en_US.utf8
sudo locale-gen
