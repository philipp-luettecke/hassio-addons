#!/usr/bin/with-contenv bashio

echo Starting Jenkins daemon
#/etc/init.d/jenkins start
/bin/su -l jenkins --shell=/bin/bash \
-c '/usr/bin/daemon --name=jenkins \
--inherit --env=JENKINS_HOME=/var/lib/jenkins \
--output=/var/log/jenkins/jenkins.log \
--pidfile=/var/run/jenkins/jenkins.pid -- \
/usr/bin/java  -Dhudson.diyChunking=false \
-Djenkins.install.runSetupWizard=false -jar \
/usr/share/jenkins/jenkins.war \
--webroot=/var/cache/jenkins/war \
--httpPort=8080'
