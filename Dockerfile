# Use a base image with Java installed
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Spring Boot JAR file into the container
COPY target/practice.jar /app/practice.jar

# Expose port 8080
EXPOSE 8080

# Command to run the Spring Boot application
ENTRYPOINT ["java", "-jar", "practice.jar"]
