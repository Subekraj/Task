
FROM maven:3.8.4-openjdk-11-slim

WORKDIR /app

COPY api/pom.xml .
RUN mvn dependency:go-offline

COPY api/src ./src

RUN mvn package -DskipTests

EXPOSE 8080

CMD ["java", "-jar", "target/api.jar"]