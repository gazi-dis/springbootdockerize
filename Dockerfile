#Usage with jar exec method with profiles
FROM openjdk:11
WORKDIR /app
ADD target/dockerize-0.0.1-SNAPSHOT.jar dockerize-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar","-Dspring.profiles.active=docker", "dockerize-0.0.1-SNAPSHOT.jar"]

#Usage with jar exec method
#FROM openjdk:11
#WORKDIR /app
#ADD target/dockerize-0.0.1-SNAPSHOT.jar dockerize-0.0.1-SNAPSHOT.jar
#ENTRYPOINT ["java", "-jar", "dockerize-0.0.1-SNAPSHOT.jar"]


#Usage with maven exec method
#FROM openjdk:11
#WORKDIR /app
#COPY . .
#RUN chmod +x mvnw && ./mvnw clean install -U
#ENTRYPOINT ["./mvnw", "spring-boot:run"]