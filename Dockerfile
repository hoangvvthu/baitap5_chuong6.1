# =========================
# Stage 1: Build WAR with Maven
# =========================
FROM maven:3.9.11-eclipse-temurin-21 AS builder
WORKDIR /deployServletProject
COPY . .
RUN mvn clean package -DskipTests

# =========================
# Stage 2: Deploy on Tomcat
# =========================
FROM tomcat:11.0.10-jdk21-temurin

# xóa app mặc định của Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# copy WAR build được vào ROOT.war
COPY --from=builder /chuong6.1/target/*.war /usr/local/tomcat/webapps/ROOT.war

# expose port 8080
EXPOSE 8080

# chạy Tomcat
CMD ["catalina.sh", "run"]
