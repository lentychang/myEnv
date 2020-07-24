bash -c "echo blacklist nouveau > /etc/modprobe.d/blacklist-nvidia-nouveau.conf"
bash -c "echo options nouveau modeset=0 >> /etc/modprobe.d/blacklist-nvidia-nouveau.conf"
update-initramfs -u\

#[root@study ~]# vim /etc/default/grub
#GRUB_CMDLINE_LINUX="vconsole.keymap=us crashkernel=auto  vconsole.font=latarcyrheb-sun16
#  rhgb quiet rd.driver.blacklist=nouveau nouveau.modeset=0"
# 在 GRUB_CMDLINE_LINUX 設定裡面加上 rd.driver.blacklist=nouveau nouveau.modeset=0 的意思！
#[root@study ~]# grub2-mkconfig -o /boot/grub2/grub.cfg

