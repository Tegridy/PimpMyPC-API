FROM maven:3.8.4-openjdk-17-slim as builder

RUN mkdir -p /build

WORKDIR /build

COPY pom.xml /build

RUN mvn -B dependency:resolve dependency:resolve-plugins

COPY src /build/src

ARG MYSQL_PASSWORD=${DB_PASSWORD}
ARG DB_HOST=${DB_HOST}
ARG DB_PORT=${DB_PORT}
ARG JWT_SECRET=${JWT_SECRET}

RUN mvn clean compile package



FROM openjdk:17-slim as runtime

ENV APP_HOME /app

ENV MYSQL_PASSWORD=${DB_PASSWORD}
ENV DB_HOST=${DB_HOST}
ENV DB_PORT=${DB_PORT}
ENV JWT_SECRET=${JWT_SECRET}

RUN mkdir $APP_HOME

WORKDIR $APP_HOME

COPY --from=builder /build/target/*.jar app.jar

ENTRYPOINT ["java","-jar","app.jar", "--spring.profiles.active=prod"]