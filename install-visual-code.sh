
sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make
sudo apt-get --yes --allow-downgrades update
sudo apt-get --yes --allow-downgrades install ubuntu-make

umake ide visual-studio-code

echo alias visual-code=~/.local/share/umake/ide/visual-studio-code/bin/code >> ~/.bashrc

source ~/.bashrc

echo Type 'visual-code' to launch Visual Code

echo note: updating Visual Code will install to /usr/bin/code

