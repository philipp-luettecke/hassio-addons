ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh


RUN apt-get install -y libunwind8 libpcap0.8 wget vim

RUN echo "deb http://apt.pilight.org/ stable main" > /etc/apt/sources.list.d/pilight.list

RUN wget -O - http://apt.pilight.org/pilight.key | apt-key add -

RUN apt-get install -y pilight

COPY pilight-config.json /etc/pilight/config.json

CMD [ "/run.sh" ]
