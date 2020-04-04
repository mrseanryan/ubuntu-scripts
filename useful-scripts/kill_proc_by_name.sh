#kill the process named '$1'
#
#works on Ubuntu NOT on Cygwin

set -e

if [[ $# -ne 1 ]]; then
    echo "USAGE: $0 <name of process to kill> [secondary filter]"
    exit 2
fi

pid=`ps -Af | grep $1 | grep -v grep | awk '{print $2}'` # || echo "$0 - line $LINENO: An error has occurred."; exit 1;

kill -9 $pid  || echo "$0 - line $LINENO: An error has occurred."; exit 1;
