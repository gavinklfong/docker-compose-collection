docker run --rm -it \
-v ${PWD}/logstash-pipeline/:/usr/share/logstash/pipeline/ \
-v ${PWD}/logstash-data/:/usr/share/logstash/data/ \
--network elasticsearch_elasticnet \
docker.elastic.co/logstash/logstash:6.8.15