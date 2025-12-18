# Use a Java 17 runtime as the base image
FROM eclipse-temurin:17-jre-jammy

# Create app dir
WORKDIR /app

# Copy jar (jar exists at project root)
COPY demo-0.0.1-SNAPSHOT.jar /app/app.jar

# Expose port
EXPOSE 8080

# Run as non-root user (optional)
# RUN useradd -m appuser && chown -R appuser /app
# USER appuser

ENTRYPOINT ["java", "-jar", "/app/app.jar"]
