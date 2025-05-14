# Step 1: Use a Maven image to build the application
FROM maven:3.8-openjdk-17 AS builder

# Set the working directory for the build
WORKDIR /app

# Copy the pom.xml file to download dependencies
COPY pom.xml .

# Download dependencies to cache them (this helps to avoid downloading them every time)
RUN mvn dependency:go-offline

# Copy the rest of the project files
COPY . .

# Build the project (create the JAR file)
RUN mvn clean package -DskipTests

# Step 2: Use a base image with Java installed for running the application
FROM openjdk:17-jdk-slim

# Set the working directory inside the container for runtime
WORKDIR /app

# Copy the built JAR file from the builder image
COPY --from=builder /app/target/practice.jar /app/practice.jar

# Expose port 8080 for the application
EXPOSE 8080

# Command to run the Spring Boot application
ENTRYPOINT ["java", "-jar", "practice.jar"]
