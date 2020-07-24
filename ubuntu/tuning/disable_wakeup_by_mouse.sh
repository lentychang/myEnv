#!/bin/bash
# Disable mouse for waking up from suspend
# https://askubuntu.com/questions/848698/wake-upposted by Juan Gómez Carrillo
echo "show port of usb"
grep . /sys/bus/usb/devices/*/product

echo "show which device is able to wake up computer"
grep . /sys/bus/usb/devices/*/power/wakeup

# sudo cp ../settings/usbwakeup /etc/init.d/usbwakeup
#sudo ln -s /etc/init.d/usbwakeup /etc/rc3.d/S01usbwakeup
# echo "successfully set up, please restart computer"

