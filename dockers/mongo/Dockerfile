FROM mongo:4.4


EXPOSE 27017
RUN mkdir mongo 
WORKDIR /mongo
COPY resources/import_distances.sh import_distances.sh
RUN chmod +x import_distances.sh
RUN mkdir data
COPY data/origin_dest_distances.jsonl data/origin_dest_distances.jsonl 


COPY dockers/mongo/mongo.sh mongo.sh

RUN chmod +x mongo.sh

CMD ["./mongo.sh"]