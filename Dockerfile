FROM openjdk:16-slim

EXPOSE 8080

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} pmp.jar

ENTRYPOINT ["java","-jar","/pmp.jar", "--spring.profiles.active=prod"]