#!/usr/bin/with-contenv bashio

echo Here we would like to adapt the pilight config with values from the configuration of the addon

echo Starting pilight daemon

echo 11 > /sys/class/gpio/export
/usr/local/sbin/pilight-daemon -F
