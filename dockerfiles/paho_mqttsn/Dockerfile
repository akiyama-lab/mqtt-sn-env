FROM alpine:latest

RUN \
    cd /tmp && \
    apk --update add openssl openssl-dev g++ make git && \
    git clone -b gateway https://github.com/eclipse/paho.mqtt-sn.embedded-c gateway && \
    cd gateway/

COPY alpine-gateway.patch /tmp/gateway/alpine-gateway.patch

RUN \
    cd /tmp/gateway/ && \
    patch -p1 -u < alpine-gateway.patch && \
    make && \
    cp Build/MQTT-SNGateway /usr/sbin/ && \
    cp Build/MQTT-SNLogmonitor  /usr/sbin/ && \
    mkdir -p /paho_mqttsn/config/ &&\
    cp MQTTSNGateway/gateway.conf /paho_mqttsn/config/gateway.conf

