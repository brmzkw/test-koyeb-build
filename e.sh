#!/bin/sh


echo =========================
echo Custom entrypoint called with: $@
echo Environment:
env
echo =========================

exec /docker-entrypoint.sh nginx -g 'daemon off;'
