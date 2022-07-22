FROM ubuntu:bionic

COPY ./mosquitto.sh /mosquitto.sh

RUN apt-get update

RUN apt-get install software-properties-common coreutils -y

RUN add-apt-repository ppa:mosquitto-dev/mosquitto-ppa

RUN apt update -y && apt install mosquitto mosquitto-clients -y \
    && chmod +x /mosquitto.sh
COPY ./config/mosquitto.conf /etc/mosquitto/mosquitto.conf
COPY ./config/mosquitto.passwd /etc/mosquitto/mosquitto.passwd
RUN mkdir -p /mosquitto/data
RUN mosquitto_passwd -U /etc/mosquitto/mosquitto.passwd

ENTRYPOINT ["/mosquitto.sh"]