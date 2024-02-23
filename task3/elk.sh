docker network create elk-network
docker run -d --name elasticsearch --net elk-network -p 9200:9200 -p 9300:9300 docker.elastic.co/elasticsearch/elasticsearch:7.10.0
docker run -d --name logstash --net elk-network -p 5000:5000 docker.elastic.co/logstash/logstash:7.10.0