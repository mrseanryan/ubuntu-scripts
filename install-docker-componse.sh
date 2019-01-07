# permission denied at /usr/local/bin/docker-compose
# so using ~/bin

mkdir -p ~/bin

curl -L https://github.com/docker/compose/releases/download/1.8.0/docker-compose-`uname -s`-`uname -m` > ~/bin/docker-compose
chmod +x ~/bin/docker-compose

# To make sure ~/bin is in PATH
source ~/.profile
