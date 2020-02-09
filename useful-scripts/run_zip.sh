#zip dirs to new archives:

set -e

_datetime=`date +%Y-%m-%d--%H.%M`

_zipOfZipFiles=

function zip_dir
{
#	----------------------------------------------------------------
#	Function to zip given dir
#		Accepts 1 argument:
#			path to the directory
#	----------------------------------------------------------------
    echo "----- zipping dir $1 -----"

    _zipFile=$1__$_datetime.zip

    zip ./$_zipFile $1 -r -q
    _zipOfZipFiles="$_zipOfZipFiles $_zipFile"
    #echo _zipOfZipFiles \"$_zipOfZipFiles\"
    echo " "
}

if [[ $# -ne 1 ]]; then
    echo "USAGE: $0 <directory to zip>"
    exit 2
fi

DIR=$1

zip_dir $1
