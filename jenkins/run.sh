#!/usr/bin/with-contenv bashio

bashio::log.info "Starting Jenkins daemon"
mkdir -p /share/jenkins
java -jar /opt/jenkins.war
