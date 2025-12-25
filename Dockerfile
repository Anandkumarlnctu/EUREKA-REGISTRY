# Use Java 17 runtime
FROM eclipse-temurin:17-jdk-alpine

# Set working directory
WORKDIR /app

# Copy jar file
COPY target/EUREKA-REGISTRY-0.0.1-SNAPSHOT.jar app.jar

# Expose Eureka port
EXPOSE 8080

# Run application
ENTRYPOINT ["java", "-jar", "app.jar"]
