#ARG BUILD_FROM=debian:buster-slim
#FROM $BUILD_FROM
FROM arm32v7/debian:bullseye-slim

#COPY qemu-arm-static /usr/bin

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Setup base system
RUN apt-get update \
    && apt-get install -y wget vim gnupg \
    && echo "deb http://apt.pilight.org/ stable main" > /etc/apt/sources.list.d/pilight.list \
    && wget -O - http://apt.pilight.org/pilight.key | apt-key add -

# Install Pilight from apt repositories
RUN apt-get update && apt-get install -y pilight
# Copy the pilight Config into the Container
COPY pilight-config.json /etc/pilight/config.json

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
