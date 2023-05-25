#!/bin/sh


echo welcome to the custom entrypointtttttttttttttttt

exec /docker-entrypoint.sh nginx -g 'daemon off;'
