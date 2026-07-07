# Usar una imagen de Eclipse Temurin (es el estándar actual de Java)
FROM eclipse-temurin:17-jre-alpine

# Directorio de trabajo en el contenedor
WORKDIR /app

# Copiar el archivo .jar
COPY target/com.sistema.trailers-1.0.jar app.jar

# Exponer el puerto
EXPOSE 8080

# Comando para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "app.jar"]