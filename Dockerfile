FROM rabbitmq:management
# COPY .erlang.cookie /var/lib/rabbitmq/mnesia/
COPY cluster-entrypoint.sh /usr/local/bin/
ENTRYPOINT /usr/local/bin/cluster-entrypoint.sh