#!/usr/bin/with-contenv bashio

echo Here we would like to adapt the pilight config with values from the configuration of the addon
# Extract config data
CONFIG_PATH=/data/options.json
GPIO_PLATFORM=$(jq -r '.gpio_platform // empty' "$CONFIG_PATH")
GPIO_PLATFORM=${GPIO_PLATFORM:-none} # default to none

echo GPIO Platform found: $GPIO_PLATFORM

# Update pilight config
sed -i 's/\("gpio-platform"\): \?".*"\(.*\)/\1: "'"$GPIO_PLATFORM"'"\2/' /etc/pilight/config.json

echo Starting pilight daemon
#echo 11 > /sys/class/gpio/export
/usr/local/sbin/pilight-daemon -F
