#!/bin/bash

# start rabbitmq service in backgroud
/usr/local/bin/docker-entrypoint.sh rabbitmq-server -detached
# wait rabbitmq service available
sleep 5s
# stop rabbitmq application
rabbitmqctl stop_app
# join to rabbitmq1
rabbitmqctl join_cluster rabbit@rabbitmq-1
# start rabbitmq app to sync data
rabbitmqctl start_app
# stop rabbitmq service
rabbitmqctl stop
# wait rabbitmq service down
sleep 2s
# start rabbitmq service in frontground
rabbitmq-server 