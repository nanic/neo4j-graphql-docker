## Neo4j with GraphQL

A Docker file to create a neo4j image with GraphQL plugin installed

### How to run the image ?

docker pull nanic/neo4j-graphql  
docker run -d -h localhost -p 7474:7474 -p 7687:7687 nanic/neo4j-graphql
