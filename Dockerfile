FROM openjdk:8-jdk-alpine
USER root
COPY src /home/app/src

COPY pom.xml /home/app

COPY mvnw /home/app

WORKDIR /home/app/

RUN ls -a

RUN ./mvnw clean package

ARG JAR_FILE=/target/*.jar

COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java","-jar","/app.jar"]