#!/bin/sh

docker build -t sn_publisher ./dockerfiles/mqttsn-client/
docker run -it sn_publisher:latest /bin/ash

