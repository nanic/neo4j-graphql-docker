## Neo4j with GraphQL

A Docker file to create a neo4j image with GraphQL plugin installed

### How to build the image ?

```
docker build -t nanic/neo4j-graphql --build-arg DOWNLOAD_URL=`./get_latest_jar.sh` .
```

### How to run the image ?

```
docker pull nanic/neo4j-graphql

docker run -d -h localhost -p 7474:7474 -p 7687:7687 nanic/neo4j-graphql
```


### Generating a private key and certificate

```
openssl req -new -newkey rsa:2048 -nodes -keyout neo4j_local_domain.key -out neo4j_local_domain.csr

openssl x509 -req -in neo4j_local_domain.csr -signkey neo4j_local_domain.key -out neo4j_local_domain.crt
```