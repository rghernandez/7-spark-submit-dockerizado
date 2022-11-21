#!/bin/bash
#python3 resources/train_spark_mllib_model.py . &&

cd /opt/spark/

./bin/spark-submit --class es.upm.dit.ging.predictor.MakePrediction --total-executor-cores 4 --master spark://master:7077  --packages org.mongodb.spark:mongo-spark-connector_2.12:3.0.0,org.apache.spark:spark-sql-kafka-0-10_2.12:3.0.0 /practica_big_data_2019/flight_prediction/target/scala-2.12/flight_prediction_2.12-0.1.jar 