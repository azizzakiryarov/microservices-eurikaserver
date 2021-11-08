FROM openjdk:11-jdk-slim

ADD target/eurikaserver-0.0.1-SNAPSHOT.jar eurikaserver-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["java","-jar","/eurikaserver-0.0.1-SNAPSHOT.jar"]

EXPOSE 8761