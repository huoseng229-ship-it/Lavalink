# Sử dụng Java 17 (Lavalink yêu cầu)
FROM eclipse-temurin:17
WORKDIR /app

# Sao chép toàn bộ file từ repo
COPY . .

# Build Lavalink bằng Gradle
RUN ./gradlew build --no-daemon -x test

# Chạy Lavalink (file JAR sẽ nằm trong build/libs/)
CMD ["java", "-jar", "build/libs/Lavalink.jar"]
