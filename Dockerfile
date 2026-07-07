# 1. Fase de construcción: Usamos Maven para compilar el proyecto
FROM maven:3.8.5-openjdk-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean install -DskipTests

# 2. Fase de ejecución: Usamos el archivo .jar generado arriba
FROM eclipse-temurin:17-jre-alpine
WORKDIR /app
# Copiamos el .jar desde la fase de construcción (la carpeta target)
COPY --from=build /app/target/com.sistema.trailers-1.0.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]