# Build runtime image

FROM openjdk:17-jdk-slim
EXPOSE 8080
WORKDIR /app
COPY target/randomquotes.0.*.jar ./app.jar
ENV SPRING_CONFIG_NAME=docker-application
CMD ["java", "-jar", "/app/app.jar"]
