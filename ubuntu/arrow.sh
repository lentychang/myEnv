sudo apt update
sudo apt install -y -V apt-transport-https gnupg lsb-release wget
sudo wget -O /usr/share/keyrings/apache-arrow-keyring.gpg https://dl.bintray.com/apache/arrow/$(lsb_release --id --short | tr 'A-Z' 'a-z')/apache-arrow-keyring.gpg
sudo tee /etc/apt/sources.list.d/apache-arrow.list <<APT_LINE
deb [arch=amd64 signed-by=/usr/share/keyrings/apache-arrow-keyring.gpg] https://dl.bintray.com/apache/arrow/$(lsb_release --id --short | tr 'A-Z' 'a-z')/ $(lsb_release --codename --short) main
deb-src [signed-by=/usr/share/keyrings/apache-arrow-keyring.gpg] https://dl.bintray.com/apache/arrow/$(lsb_release --id --short | tr 'A-Z' 'a-z')/ $(lsb_release --codename --short) main
APT_LINE
sudo apt update
sudo apt install -y -V libarrow-dev # For C++
sudo apt install -y -V libarrow-glib-dev # For GLib (C)
sudo apt install -y -V libarrow-flight-dev # For Flight C++
sudo apt install -y -V libarrow-dataset-dev libarrow-python-dev
sudo apt install -y -V libplasma-dev # For Plasma C++
sudo apt install -y -V libplasma-glib-dev # For Plasma GLib (C)
sudo apt install -y -V libgandiva-dev # For Gandiva C++
sudo apt install -y -V libgandiva-glib-dev # For Gandiva GLib (C)
sudo apt install -y -V libparquet-dev # For Apache Parquet C++
sudo apt install -y -V libparquet-glib-dev # For Apache Parquet GLib (C)


# install dependency
sudo apt install -y automake flex bison autopoint intltool autoconf libtool gettext libboost-all-dev libevent-dev libssl-dev libtool make pkg-config

git clone https://github.com/apache/thrift.git
cd thrift && git checkout tags/0.10.0 -b v10 && ./boostrap.sh
./configure --with-java=no --with-lua=no && make -j3 && sudo make install
git checkout master && ./boostrap.sh && ./configure && make -j3 && sudo make install
cd .. && rm -r thrift

git clone https://github.com/apache/arrow.git && cd arrow/cpp
mkdir release && cd release
cmake -DARROW_PARQUET=ON -DARROW_USE_LD_GOLD=ON ..
make -j3 && sudo make install
