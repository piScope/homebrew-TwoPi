#!/bin/bash

if [ $# -ne 2 ]; then
    echo "print_resource name url"
    exit
fi
if [ $1 == '-h' ]; then
    echo "print_resource name url"
    exit
fi
if [ $1 == '--help' ]; then
    echo "print_resource name url"
    exit
fi

NAME=$1
URL=$2
FILE="$(basename -- $URL)"
wget $2
SHA=$(openssl sha256 < $FILE)

echo "resource \""$NAME"\" do"
echo "    " url "\""${URL}"\""
echo "    " sha256 "\""${SHA}"\""
echo "end"

rm $FILE
