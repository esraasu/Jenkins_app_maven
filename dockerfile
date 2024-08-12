# Use an official OpenJDK image as a parent image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /usr/app/

# Copy the JAR file into the container
COPY ./target/java-maven-app-*.jar  /usr/app/
#RUN chmod 777 /usr/app -R
# Run the application
#CMD java -jar java-maven-app-*.jar
ENTRYPOINT ["java", "-jar", "/usr/app/java-maven-app-*.jar"]

EXPOSE 8080

