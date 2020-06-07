#!/usr/bin/env bash
set -eu

envsubst '${PORT}' < /nginx.default.conf.template > /etc/nginx/conf.d/default.conf

exec "$@"
