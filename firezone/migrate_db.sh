#!/bin/bash

pushd `dirname $0` > /dev/null

../edc.sh run --rm firezone bin/migrate

popd > /dev/null