ARG BUILD_FROM=ghcr.io/hassio-addons/base/amd64:9.0.1
FROM ${BUILD_FROM}

COPY rootfs /

RUN apk add --no-cache wget

#RUN nslookup google.com

#RUN apk add --no-cache python

#RUN apt-get update
#RUN apt-get install -y watchdog

#RUN echo 'watchdog-device = /dev/watchdog' >> /etc/watchdog.conf
#RUN echo 'watchdog-timeout = 15' >> /etc/watchdog.conf
#RUN echo 'max-load-1 = 24' >> /etc/watchdog.conf

# Copy data for add-on
#COPY run.sh /
#RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
