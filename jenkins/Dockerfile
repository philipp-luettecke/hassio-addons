ARG BUILD_FROM=homeassistant/armv7-base-debian:buster
FROM $BUILD_FROM

#COPY qemu-arm-static /usr/bin

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
 
# Setup base system
RUN apt-get update \
    && apt-get install -y wget vim gnupg openjdk-11-jre\
    && echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list \
    && wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | apt-key add -

# Install Jenkins from apt repositories
#RUN apt-get update  && apt-get install -y jenkins

ADD http://mirrors.jenkins-ci.org/war/latest/jenkins.war /opt/jenkins.war
RUN chmod 644 /opt/jenkins.war
ENV JENKINS_HOME /share/jenkins

# Copy data for add-on
COPY run.sh / 
RUN chmod a+x /run.sh

CMD [ "./run.sh" ]
