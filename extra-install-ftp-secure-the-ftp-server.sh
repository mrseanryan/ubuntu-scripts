echo === secure the vsftpd for ftp server ===

sudo cp ./config/ftp/vsftpd.conf.NOT-secure /etc/vsftpd.conf
sudo cp ./config/ftp/vsftpd.chroot_list.NOT-secure /etc/vsftpd.chroot_list

sudo systemctl restart vsftpd

echo You still need to install ssh!
