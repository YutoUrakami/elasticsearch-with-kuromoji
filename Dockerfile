FROM docker.elastic.co/elasticsearch/elasticsearch:6.0.1
MAINTAINER Yuto Urakami <phoooutty@gmail.com>

COPY --chown=elasticsearch:elasticsearch config/elasticsearch.yml /usr/share/elasticsearch/config/
RUN bin/elasticsearch-plugin remove ingest-geoip

# kuromojiをインストール
RUN elasticsearch-plugin install analysis-kuromoji
