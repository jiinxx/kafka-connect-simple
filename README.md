# Kafka Connect with File-source-connect
Based on the article [Kafka and Elastic Search, A Perfect Match](https://qbox.io/blog/kafka-and-elasticsearch-a-perfect-match-1).
All credit goes to the writer of that article

NOTE that there are issues with this setup. The file-slurping failes since the kafka-process isnt started sufficiently before the connect-image starts to read the file. If started separately it works thou

# Quickstart

Build a package of the code:
```
mvn clean package
```
configure IP - usualy 172.17.0.x
```
Start docker containers:
```
docker-compose up
```

