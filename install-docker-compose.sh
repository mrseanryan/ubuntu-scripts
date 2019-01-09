# permission denied at /usr/local/bin/docker-compose
# so using /usr/bin/

TMP=`mktemp -d 2>/dev/null || mkdtemp -d -t 'temp'`

curl -L https://github.com/docker/compose/releases/download/1.23.2/docker-compose-`uname -s`-`uname -m` > $TMP/docker-compose
chmod +x $TMP/docker-compose

sudo mv $TMP/docker-compose /usr/bin/
