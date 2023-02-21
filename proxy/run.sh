#!/bin/sh

set -e

envsubst < /etc/nginx/default.conf.tpl > /etc/nginx/xonf.d/default.conf
nginx -g 'daemon off;'