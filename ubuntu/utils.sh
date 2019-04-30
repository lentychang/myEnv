#!/bin/bash
apt-get clean && \
    apt-get update && apt-get -y install \
    usbutils \
    pciutils