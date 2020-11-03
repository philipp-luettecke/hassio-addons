#!/usr/bin/with-contenv bashio

bashio::log Here we would like to adapt the pilight config with values from the configuration of the addon

GPIO_PLATFORM="$(bashio::config 'gpio_platform')"

if bashio::config.has_value "gpio_platform"; then GPIO_PLATFORM=$(bashio::config 'gpio_platform');
else
bashio::log.error "No Platform specified - using none instead"
GPIO_PLATFORM="none"
fi

if bashio::config.has_value "sender"; then SENDER=$(bashio::config 'sender'); else SENDER=-1; fi
if bashio::config.has_value "receiver"; then RECEIVER=$(bashio::config 'receiver'); else RECEIVER=-1; fi


bashio::log "GPIO Platform found: $GPIO_PLATFORM"
bashio::log "SENDER Pin is: $SENDER"
bashio::log "RECEIVER Pin is: $RECEIVER"

# Update pilight config
sed -i 's/\("gpio-platform"\): \?".*"\(.*\)/\1: "'"$GPIO_PLATFORM"'"\2/' /etc/pilight/config.json
sed -i 's/\("sender"\): \?".*"\(.*\)/\1: "'"$SENDER"'"\2/' /etc/pilight/config.json
sed -i 's/\("receiver"\): \?".*"\(.*\)/\1: "'"$RECEIVER"'"\2/' /etc/pilight/config.json

bashio::log.green "Starting pilight daemon"

/usr/local/sbin/pilight-daemon -F
