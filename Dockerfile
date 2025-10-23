# Use a lightweight JDK runtime image
FROM eclipse-temurin:17-jdk-jammy

# Set working directory inside the container
WORKDIR /app

# Copy the already-built jar from Jenkins workspace
COPY target/*.jar app.jar

# Expose the port your app uses
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
