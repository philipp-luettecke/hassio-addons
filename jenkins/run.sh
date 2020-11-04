#!/usr/bin/with-contenv bashio

pwd
ls -lisa /mnt/
ls -lisa /mnt/data/
ls -lisa /mnt/data/supervisor/
ls -lisa /mnt/data/supervisor/share

bashio::log.info "Starting Jenkins daemon"
#java -jar /opt/jenkins.war
