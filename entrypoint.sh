#!/bin/sh

[ -z "$PLUGIN_HOST" ] && echo "missing PLUGIN_HOST environment variable" && exit 2
[ -z "$PLUGIN_PORT" ] && echo "missing PLUGIN_PORT environment variable" && exit 3

PLUGIN_TIMEOUT=${PLUGIN_TIMEOUT:-45}

./wait-for-it/wait-for-it.sh "$PLUGIN_HOST:$PLUGIN_PORT" -t "$PLUGIN_TIMEOUT"

