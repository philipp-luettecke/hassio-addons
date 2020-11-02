#!/usr/bin/with-contenv bashio

# Extract config data
CONFIG_PATH=/data/options.json
USERNAME="$(bashio::config 'username')"
PASSWORD="$(bashio::config 'password')"
SCAN_INTERVAL="$(bashio::config 'scan_interval')"
WEBHOOK="$(bashio::config 'webhook')"

python3 grab.py $USERNAME $PASSWORD $WEBHOOK $SCAN_INTERVAL

