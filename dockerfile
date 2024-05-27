# Use official OpenJDK 17 image as base
FROM openjdk:17-jdk-alpine

# Refer to Maven build -> finalName
ARG JAR_FILE=target/spring_demo-0.0.1-SNAPSHOT.jar
# Set the working directory in the container
WORKDIR /app

# Copy the packaged JAR file into the container
COPY target/spring_demo-0.0.1-SNAPSHOT.jar spring_demo-0.0.1-SNAPSHOT.jar

EXPOSE 8080

# Specify the command to run your Spring Boot application
CMD ["java", "-jar", "spring_demo-0.0.1-SNAPSHOT.jar"]

