FROM alpine/java:21-jre
WORKDIR /learning-projekt
COPY target/learning-journal-0.0.1-SNAPSHOT.jar /learning-projekt
ENTRYPOINT ["java" , "-jar" , "learning-journal-0.0.1-SNAPSHOT.jar"]
EXPOSE 8080/tcp

