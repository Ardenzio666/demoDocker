FROM openjdk:21-jdk
WORKDIR /app
#Copiamo il file jar creato dal progetto in una drectory del container
COPY demo/target/demo-0.0.1-SNAPSHOT.jar /app/demo.jar
#Apriamo la porta che usa la nostra app per le connessioni
EXPOSE 8080
#Il file demo.jar è il  nome che abbiamo dato all'app sul container durante la copia
CMD ["java", "-jar", "demo.jar"]