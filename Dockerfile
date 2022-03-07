FROM neo4j:latest

LABEL author="Naren <nanichowdary.ravilla@gmail.com>"

ENV NEO4J_HOME=/var/lib/neo4j

ARG DOWNLOAD_URL

ADD neo4j.conf $NEO4J_HOME/conf/neo4j.conf

RUN wget ${DOWNLOAD_URL} && \
	cp neo4j-graphql-*.jar $NEO4J_HOME/plugins

CMD ["neo4j"]
