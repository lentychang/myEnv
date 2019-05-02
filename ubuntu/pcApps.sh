#!/bin/bash
apt-get -y install \ 
    terminator \
    indicator-multiload \
    wakeonlan

# Useful tools
# fast search gui
add-apt-repository ppa:christian-boxdoerfer/fsearch-daily -y
apt update && sudo apt install fsearch-trunk


# for trello
apt-get install -y libgconf2-dev
apt install -y libcanberra-gtk-module libcanberra-gtk3-module
