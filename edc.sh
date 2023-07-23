#!/bin/sh

env $(cat /etc/compose.env) docker-compose "$@"
