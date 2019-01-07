
sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make
sudo apt-get --yes --force-yes update
sudo apt-get --yes --force-yes install ubuntu-make

umake ide visual-studio-code

alias code=~/.local/share/umake/ide/visual-studio-code/bin/code

echo Type 'code' to launch Visual Code

