#!/bin/bash
echo "启动(start)zookeeper......"
/docker-entrypoint.sh
zkServer.sh start-foreground &
echo "启动(start)zookeeper...... successful!"
echo "启动(start)kafka_2.12-0.10.2.0......"
# /kafka_2.12-0.10.2.0/bin/zookeeper-server-start.sh config/zookeeper.properties &&\
cd /$KAFKA_USER/
bin/kafka-server-start.sh config/server.properties
# echo "启动(start)kafka_2.12-0.10.2.0......successful!"
