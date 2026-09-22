FROM alpine/java:21-jre
WORKDIR /learning-journal
COPY target/learning-journal-0.0.1-SNAPSHOT.jar /learning-journal
ENTRYPOINT ["java" , "-jar" , "learning-journal-0.0.1-SNAPSHOT.jar"]
EXPOSE 8080/tcp

