# Use the official OpenJDK 17 base image
FROM openjdk:17-jdk-alpine

# Refer to Maven build -> finalName
ARG JAR_FILE=target/spring-boot-web.jar

# Set the working directory inside the container
WORKDIR /opt/app

# Copy the jar file into the working directory
COPY ${JAR_FILE} spring-boot-web.jar

# Command to run the Spring Boot application
ENTRYPOINT ["java","-jar","spring-boot-web.jar"]
