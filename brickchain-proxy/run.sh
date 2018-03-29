#!/bin/sh

set -e

CONFIG_PATH=/data/options.json

export SECRET=$(jq --raw-output ".secret" $CONFIG_PATH)

CONFIG_REMOTE=$(jq --raw-output ".remote" $CONFIG_PATH)
if [ -n "$CONFIG_REMOTE" ] && [ "$CONFIG_REMOTE" != "null" ]; then
    export REMOTE=$CONFIG_REMOTE
fi

/hass-proxy