#!/bin/sh


echo welcome to the custom entrypointtttttttttttttttt, argumnets provided: $@

exec /docker-entrypoint.sh nginx -g 'daemon off;'
