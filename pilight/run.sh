#!/usr/bin/with-contenv bashio

echo Here we would like to adapt the pilight config with values from the configuration of the addon

echo Starting pilight daemon

#/usr/local/sbin/pilight-daemon -F
service pilight restart

