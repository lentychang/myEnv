#/bin/bash

sudo apt install gcc-arm-none-eabi
wget https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/2019-12/R/eclipse-cpp-2019-12-R-linux-gtk-x86_64.tar.gz&mirror_id=1190

git clone https://github.com/texane/stlink.git
cd stlink && make release
sudo cp etc/udev/rules.d/* /etc/udev/rules.d/
sudo udevadm control --reload-rules
sudo udevadm trigger
cd build/Release && sudo make install


# for blink led project, modification of BlinkLed.h is required.
# search for and modify as followed
#define BLINK_PORT_NUMBER               (0)
#define BLINK_PIN_NUMBER                (5)
#define BLINK_ACTIVE_LOW                (0)

# download openOCD on-chip debuger
wget https://sourceforge.net/projects/openocd/files/latest/download


sudo apt install libusb-dev libusb-1.0.0-dev libftdi-dev libftdi1


# configure for openOCD
# change Makefile to ignore warning, Modify GCC_WARNINGS as followed
# GCC_WARNINGS = -Wall -Wstrict-prototypes -Wformat-security -Wshadow -Wextra -Wno-unused-parameter -Wbad-function-cast -Wcast-align -Wredundant-decls -Werror -Wno-implicit-fallthrough -Wno-format-truncation -Wno-format-overflow

./configure --enable-verbose --enable-verbose-jtag-io --enable-parport --enable-jlink --enable-ulink --enable-stlink --enable-ti-icdi  --enable-ftdi

# change tcl/board/stm32f4discovery.cfg
# source [find interface/stlink-v2.cfg] --> source [find interface/stlink-v2-1.cfg]



sudo apt install libreadline-dev
#https://developer.toradex.com/software/freertos/developing-m4-applications-using-visual-studio-code#linux
#https://www.coursera.org/learn/real-time-systems/lecture/cWEmW/freertos-hello-world-tutorial
