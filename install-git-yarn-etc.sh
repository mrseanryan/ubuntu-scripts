echo === git and git lfs ===

sudo apt-get --yes --allow-downgrades update

sudo apt --yes --allow-downgrades install git

curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
sudo apt-get --yes --allow-downgrades install git-lfs
git lfs install

echo === yarn ===
sudo apt --yes --allow-downgrades install curl

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -

echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt --yes --allow-downgrades update

sudo apt --yes --allow-downgrades install yarn

yarn --version

echo === net-tools for ifconfig ===
sudo apt --yes --allow-downgrades install net-tools

echo === dot ===
sudo apt --yes --allow-downgrades install graphviz

echo === npm ===
sudo apt --yes --allow-downgrades install npm

