FROM alpine

RUN apk update && apk upgrade
RUN apk add openjdk8 wget bash

RUN wget https://archive.apache.org/dist/kafka/3.0.0/kafka_2.12-3.0.0.tgz
RUN tar -xzvf kafka_2.12-3.0.0.tgz

EXPOSE 9092

COPY dockers/kafka/kafka.sh /kafka_2.12-3.0.0/kafka.sh

WORKDIR /kafka_2.12-3.0.0

RUN chmod +x kafka.sh

CMD ["./kafka.sh"]