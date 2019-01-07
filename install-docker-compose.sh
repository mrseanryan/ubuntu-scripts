# permission denied at /usr/local/bin/docker-compose
# so using ~/bin

mkdir -p ~/bin

curl -L https://github.com/docker/compose/releases/download/1.23.2/docker-compose-`uname -s`-`uname -m` > ~/bin/docker-compose
chmod +x ~/bin/docker-compose

# To make sure ~/bin is in PATH (but requires logout/in ?)
source ~/.profile

# Add alias for immediate use
echo alias docker-compose=~/bin/docker-compose >> ~/.bashrc
source ~/.bashrc
