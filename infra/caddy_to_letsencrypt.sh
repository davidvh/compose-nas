#!/bin/sh

while 1
do

# Get the path to the certs
SOURCE=`find /var/lib/docker/volumes/infra_certs/_data/ | grep .crt | xargs ls -t | grep $URI --max-count=1 | xargs dirname`

if $SOURCE
then
    # Copy to the expected location for Stalwart Mail Server
    cp --update $SOURCE/$URI.crt /mail/etc/certs/$URI/fullchain.pem
    cp --update $SOURCE/$URI.key /mail/etc/certs/$URI/privkey.pem
fi

sleep 300

done