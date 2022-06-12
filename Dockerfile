FROM maven:3.8.1-jdk-11-slim AS build
RUN mkdir /project
COPY . /project
WORKDIR /project
RUN mvn clean package

FROM adoptopenjdk/openjdk11:jre-11.0.9.1_1-alpine
RUN mkdir /app
COPY --from=build /project/target/final-proj-0.0.1-SNAPSHOT.jar /app/final-proj-0.0.1-SNAPSHOT.jar
WORKDIR /app

EXPOSE 80
ENTRYPOINT java -jar final-proj-0.0.1-SNAPSHOT.jar