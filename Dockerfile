FROM shoothzj/base:jdk17

WORKDIR /opt

ENV KAFKA_HOME /opt/kafka

ARG version=3.3.1

RUN wget https://downloads.apache.org/kafka/$version/kafka_2.13-$version.tgz && \
mkdir /opt/kafka && \
tar -xf /opt/kafka_2.13-$version.tgz -C /opt/kafka --strip-components 1 && \
rm -rf kafka_2.13-$version.tgz

WORKDIR /opt/kafka
