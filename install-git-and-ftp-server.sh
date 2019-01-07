echo === git and git lfs ===

sudo apt-get update

sudo apt install git

curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
sudo apt-get install git-lfs
git lfs install

echo === yarn ===
sudo apt install curl

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -

echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt update

sudo apt install yarn

yarn --version

echo === net-tools for ifconfig ===
sudo apt install net-tools

echo === vsftpd for ftp server ===
sudo apt install vsftpd

sudo apt-get install filezilla

sudo cp ./config/ftp/vsftpd.conf /etc/vsftpd.conf
sudo cp ./config/ftp/vsftpd.chroot_list /etc/vsftpd.chroot_list

sudo systemctl restart vsftpd

mkdir ~/public_ftp

echo === dot ===
sudo apt install graphviz

echo === npm ===
sudo apt install npm

