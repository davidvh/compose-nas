#!/bin/bash

pushd `dirname $0` > /dev/null

../edc.sh run --rm firezone bin/create-or-reset-admin

popd > /dev/null