#!/bin/sh

set -x -e
while [ 1 ]
do

# Get the path to the certs
SOURCE=`find /certs/ | grep .crt | xargs ls -t | grep $URI -m 1 | xargs dirname`

if [ $SOURCE ]
then
    # Copy to the expected location for Stalwart Mail Server
    mkdir -p /mail/etc/certs/$URI/
    cp --update $SOURCE/$URI.crt /mail/etc/certs/$URI/fullchain.pem
    cp --update $SOURCE/$URI.key /mail/etc/certs/$URI/privkey.pem
fi

sleep 300

done