echo === vsftpd for ftp server ===
sudo apt --yes --allow-downgrades install vsftpd

sudo apt-get --yes --allow-downgrades install filezilla

if [ ! -f /etc/vsftpd.conf.bak ]; then
  sudo mv /etc/vsftpd.conf /etc/vsftpd.conf.bak
fi

sudo cp ./config/ftp/vsftpd.conf.NOT-secure /etc/vsftpd.conf
sudo cp ./config/ftp/vsftpd.chroot_list.NOT-secure /etc/vsftpd.chroot_list

sudo systemctl restart vsftpd

mkdir -p ~/public_ftp
