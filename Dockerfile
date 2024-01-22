# Build runtime image

FROM openjdk:17-jdk-slim
EXPOSE 80
WORKDIR /app
COPY target/randomquotes.0.1.9.jar ./app.jar
ENV SPRING_CONFIG_NAME=deployed-application
CMD ["java", "-jar", "/app/app.jar"]
