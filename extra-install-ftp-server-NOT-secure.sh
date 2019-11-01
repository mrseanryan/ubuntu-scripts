echo === vsftpd for ftp server ===
sudo apt --yes --allow-downgrades install vsftpd

sudo apt-get --yes --allow-downgrades install filezilla

#sudo cp ./config/ftp/vsftpd.conf /etc/vsftpd.conf
#sudo cp ./config/ftp/vsftpd.chroot_list /etc/vsftpd.chroot_list

sudo systemctl restart vsftpd

mkdir -p ~/public_ftp
