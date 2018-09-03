
#Iniciar Zookeeper
sudo /usr/local/zookeeper/bin/zkServer.sh start

#Iniciar Kafka
sudo /usr/local/kafka/bin/kafka-server-start.sh -daemon /usr/local/kafka/config/server.properties

#Crear un topico
sudo /usr/local/kafka/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic test 
sudo /usr/local/kafka/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic test2 


#Verificar el topico
sudo /usr/local/kafka/bin/kafka-topics.sh --zookeeper localhost:2181 --describe --topic test
sudo /usr/local/kafka/bin/kafka-topics.sh --zookeeper localhost:2181 --describe --topic test2

#Producir un mensaje
sudo /usr/local/kafka/bin/kafka-console-producer.sh --broker-list localhost:9092 --topic test
sudo /usr/local/kafka/bin/kafka-console-producer.sh --broker-list localhost:9092 --topic test2

#Consumir mensaje
sudo /usr/local/kafka/bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic test --from-beginning

#Listar topicos
sudo /usr/local/kafka/bin/kafka-topics.sh --list --zookeeper localhost:2181

#Obtener detalles de un topico
sudo /usr/local/kafka/bin/kafka-topics.sh --describe --zookeeper localhost:2181 --topic test