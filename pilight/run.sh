#!/usr/bin/with-contenv bashio

echo Here we would like to adapt the pilight config with values from the configuration of the addon

GPIO_PLATFORM="$(bashio::config 'gpio_platform')"
SENDER="$(bashio::config 'sender')"
RECEIVER="$(bashio::config 'receiver')"


echo GPIO Platform found: $GPIO_PLATFORM
echo SENDER Pin is: $SENDER
echo RECEIVER Pin is: $RECEIVER

# Update pilight config
sed -i 's/\("gpio-platform"\): \?".*"\(.*\)/\1: "'"$GPIO_PLATFORM"'"\2/' /etc/pilight/config.json
sed -i 's/\("sender"\): \?".*"\(.*\)/\1: "'"$SENDER"'"\2/' /etc/pilight/config.json
sed -i 's/\("receiver"\): \?".*"\(.*\)/\1: "'"$RECEIVER"'"\2/' /etc/pilight/config.json

echo Starting pilight daemon
/usr/local/sbin/pilight-daemon -F
