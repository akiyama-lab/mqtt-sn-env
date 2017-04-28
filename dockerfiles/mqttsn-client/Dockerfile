FROM alpine:latest

RUN \
    apk --update add g++ make git vim && \
    git clone https://github.com/ty4tw/AsyncMQTT-SN.git

COPY alpine-client.patch /AsyncMQTT-SN/alpine-client.patch

RUN \
    cd /AsyncMQTT-SN && \
    patch -p1 -u < alpine-client.patch && \
    cd AsyncClient/ && \
    make

WORKDIR /AsyncMQTT-SN/AsyncClient/Build


