FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

COPY build/libs/*.jar app.jar
COPY .env .env

EXPOSE 8080

CMD ["sh", "-c", "export $(cat .env | xargs) && java -jar app.jar"]
