FROM ttbb/base:jdk17

WORKDIR /opt/sh

ENV KAFKA_HOME /opt/sh/kafka

ARG version=3.2.1

RUN wget https://downloads.apache.org/kafka/$version/kafka_2.13-$version.tgz && \
mkdir /opt/sh/kafka && \
tar -xf /opt/sh/kafka_2.13-$version.tgz -C /opt/sh/kafka --strip-components 1 && \
rm -rf kafka_2.13-$version.tgz

WORKDIR /opt/sh/kafka
