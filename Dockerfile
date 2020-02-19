FROM openjdk:8-jdk-slim

COPY . /opt

WORKDIR opt/spark/spark-2.4.4-bin-without-hadoop

USER root

RUN chmod +x /opt/entrypoint.sh

ENTRYPOINT [ "/opt/entrypoint.sh" ]