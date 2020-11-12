ARG BUILD_FROM=homeassistant/armv7-base-debian:buster
FROM $BUILD_FROM

#COPY qemu-arm-static /usr/bin

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
 
# Setup base system
RUN apt-get update \
    && apt-get --no-install-recommends install -y wget vim gnupg openjdk-11-jre\
    && wget -O - https://debian.neo4j.com/neotechnology.gpg.key | apt-key add - \
    && echo 'deb https://debian.neo4j.com stable latest' | tee -a /etc/apt/sources.list.d/neo4j.list \
    && apt-get update \
    && apt-get --no-install-recommends install -y neo4j \
    && rm -rf /tmp/* \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get -y purge --auto-remove vim wget

# Copy data for add-on
COPY run.sh / 
RUN chmod a+x /run.sh

CMD ["./run.sh" ]
