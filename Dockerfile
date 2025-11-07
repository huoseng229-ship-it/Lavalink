FROM eclipse-temurin:17
WORKDIR /app

# Tải Lavalink bản release mới nhất (không cần Git)
ADD https://github.com/lavalink-devs/Lavalink/releases/latest/download/Lavalink.jar Lavalink.jar

# Sao chép file cấu hình
COPY application.yml .

CMD ["java", "-jar", "Lavalink.jar"]
