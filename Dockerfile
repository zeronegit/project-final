FROM maven:3.8.1-jdk-11-slim@sha256:705fad546b8463c10a1e3a0d88a95c8da5a20f49732bc2daabd9d93ab165ca87 AS build

RUN mkdir /app

WORKDIR /app

COPY . /app

RUN mvn clean package

RUN ls -d -l . target

# ARG JAR_FILE=target/*.jar

# COPY ${JAR_FILE} appz.jar

# ENTRYPOINT ["java","-jar","/appz.jar"]