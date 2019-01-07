
sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make
sudo apt-get --yes --allow-downgrades update
sudo apt-get --yes --allow-downgrades install ubuntu-make

umake ide visual-studio-code

alias code=~/.local/share/umake/ide/visual-studio-code/bin/code

echo Type 'code' to launch Visual Code

