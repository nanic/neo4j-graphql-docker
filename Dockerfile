FROM neo4j:latest

MAINTAINER Naren <nanichowdary.ravilla@gmail.com>

ENV NEO4J_HOME /var/lib/neo4j

ADD neo4j.conf $NEO4J_HOME/conf/neo4j.conf

RUN wget https://github.com/nanic/neo4j-graphql/releases/download/3.4.0.2/neo4j-graphql-3.4.0.2.jar && \
	cp neo4j-graphql-*.jar $NEO4J_HOME/plugins

CMD ["neo4j"]