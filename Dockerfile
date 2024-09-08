# FROM openjdk:17-jdk-alpine 

# RUN mkdir /app

# WORKDIR /app

# COPY /*.jar /app/app.jar

# CMD ["java", "-jar", "/app/app.jar"]

FROM maven:3.8.1-openjdk-17 AS build
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline -B
COPY src ./src
RUN mvn package

FROM openjdk:17-jdk-alpine AS runtime
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]