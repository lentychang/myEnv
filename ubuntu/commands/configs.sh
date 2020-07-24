### samba config ###
# ufw allow 'Samba'
# vi /etc/samba/smb.conf
# systemctl reload smbd nmbd


### update locate database
# updatedb

### linker search path
# vi /etc/ld.so.conf
## update config file
# ldconfig

### Update udev rules
# sudo vi /etc/udev/rules.d/60-persistent-storage.rules
# sudo udevadm control --reload-rules && sudo udevadm trigger
