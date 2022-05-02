#!/usr/bin/env sh

ARIA2_CONF_DIR="/config"
SCRIPT_DIR="${ARIA2_CONF_DIR}/script"
RPC_PORT=${RPC_PORT:-6800}

ID=$(echo $RANDOM | md5sum | head -c 20)
DATA=$(cat $SCRIPT_DIR/healthcheck.json | jq -rc \
    --arg TOKEN "$RPC_SECRET" \
    '.params[0]="token:"+$TOKEN')

curl --fail localhost:"$RPC_PORT"/jsonrpc --data "$DATA" || exit 1
