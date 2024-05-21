# Use official OpenJDK 17 image as base
FROM openjdk:17-jdk-slim

# Refer to Maven build -> finalName
ARG JAR_FILE=target/spring_demo-0.0.1-SNAPSHOT.jar

# Set the working directory in the container
WORKDIR /app

# Copy the packaged JAR file into the container
COPY ${JAR_FILE} spring_demo-0.0.1-SNAPSHOT.jar

# Specify the command to run your Spring Boot application
ENTRYPOINT ["java", "-jar", "spring_demo-0.0.1-SNAPSHOT.jar"]
