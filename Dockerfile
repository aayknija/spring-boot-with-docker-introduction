FROM adoptopenjdk/openjdk11:jdk-11.0.2.9-slim
WORKDIR /opt
EXPOSE 8081
COPY target/spring-boot-with-docker-introduction-1.0.jar /opt/application.jar
ENTRYPOINT ["java", "-jar", "application.jar"]