ARG BUILD_FROM=homeassistant/armv7-base-debian:buster
FROM $BUILD_FROM

#COPY qemu-arm-static /usr/bin

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
 
# Setup base system
RUN apt-get update \
    && apt-get install -y wget python3 python3-pip chromium chromium-driver\
    && python3 -m pip install selenium

# Copy data for add-on
COPY run.sh / 
COPY grab.py /
RUN chmod a+x /run.sh /grab.py

CMD [ "./run.sh" ]
