FROM openjdk:8-jdk-alpine
VOLUME /tmp
EXPOSE 8081
RUN mkdir -p /app/
RUN mkdir -p /app/logs/
ADD target/demo-1.0-SNAPSHOT.jar /app/app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Dspring.profiles.active=container", "-jar", "/app/app.jar"]