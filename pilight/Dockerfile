ARG BUILD_FROM=homeassistant/armv7-base-debian:buster
FROM $BUILD_FROM

#COPY qemu-arm-static /usr/bin

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
 
# Setup base system
RUN apt-get update \
    && apt-get install -y wget vim gnupg \
    && echo "deb http://apt.pilight.org/ stable main" > /etc/apt/sources.list.d/pilight.list \
    && wget -O - http://apt.pilight.org/pilight.key | apt-key add -

#set package links for pilight
RUN cd /tmp \
   && wget http://apt.pilight.org/pool/stable/main/l/libmbedx509-0/libmbedx509-0_2.6.0-1_armhf.deb \
   && wget http://apt.pilight.org/pool/stable/main/l/libmbedtls10/libmbedtls10_2.6.0-1_armhf.deb \
   && wget http://apt.pilight.org/pool/stable/main/l/libmbedcrypto0/libmbedcrypto0_2.6.0-1_armhf.deb \
   && dpkg -i libmbed*.deb

# Install Pilight from apt repositories
RUN apt-get update && apt-get install -y pilight
# Copy the pilight Config into the Container
COPY pilight-config.json /etc/pilight/config.json

# Copy data for add-on
COPY run.sh / 
RUN chmod a+x /run.sh

CMD [ "./run.sh" ]
