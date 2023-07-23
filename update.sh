#!/bin/bash

pushd `dirname $0` > /dev/null
pushd $1 > /dev/null

if [ -f ./make_templates ]
then
env $(cat /etc/compose.env) bash ./make_templates
fi
../edc.sh up -d --remove-orphans --build

popd > /dev/null
popd > /dev/null
