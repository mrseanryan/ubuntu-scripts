echo === git and git lfs ===

sudo apt-get --yes --force-yes update

sudo apt --yes --force-yes install git

curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
sudo apt-get --yes --force-yes install git-lfs
git lfs install

echo === yarn ===
sudo apt --yes --force-yes install curl

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -

echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt --yes --force-yes update

sudo apt --yes --force-yes install yarn

yarn --version

echo === net-tools for ifconfig ===
sudo apt --yes --force-yes install net-tools

echo === vsftpd for ftp server ===
sudo apt --yes --force-yes install vsftpd

sudo apt-get --yes --force-yes install filezilla

sudo cp ./config/ftp/vsftpd.conf /etc/vsftpd.conf
sudo cp ./config/ftp/vsftpd.chroot_list /etc/vsftpd.chroot_list

sudo systemctl restart vsftpd

mkdir ~/public_ftp

echo === dot ===
sudo apt --yes --force-yes install graphviz

echo === npm ===
sudo apt --yes --force-yes install npm

