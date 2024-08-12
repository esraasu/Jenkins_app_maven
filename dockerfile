# Use an official OpenJDK image as a parent image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container
COPY ./target/java-maven-app-*.jar  /app/

# Run the application
ENTRYPOINT ["java", "-jar", "java-maven-app-*.jar"]

EXPOSE 9000

