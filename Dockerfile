FROM maven:3.9.16-amazoncorretto-21-debian AS builder
WORKDIR /build
COPY . .
RUN mvn clean package

FROM alpine/java:21-jre AS final
WORKDIR /learning-journal
COPY --from=builder /build/target/learning-journal-0.0.1-SNAPSHOT.jar /learning-journal
ENTRYPOINT ["java" , "-jar" , "learning-journal-0.0.1-SNAPSHOT.jar"]
EXPOSE 8080/tcp



