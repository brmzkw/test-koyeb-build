#!/bin/sh


echo =========================
echo Custom entrypoint called with: $@
echo =========================
echo =      Environment      =
echo =========================
env
echo =========================
echo =       Buildenv        =
echo =========================
cat /tmp/buildenv
echo =========================

exec /docker-entrypoint.sh nginx -g 'daemon off;'
