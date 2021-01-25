FROM debian:latest

RUN apt-get update
RUN apt-get install -y watchdog

COPY rootfs /

CMD [ "/run.sh" ]
