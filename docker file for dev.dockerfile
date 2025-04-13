FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY . /app

RUN apt-get update && apt-get install -y maven

CMD ["mvn", "spring-boot:run"]
