FROM maven:3.9.11-eclipse-temurin-21 AS builder
WORKDIR /deployServletProject
COPY . .
RUN mvn clean package -DskipTests

FROM tomcat:11.0.10-jdk21-corretto
RUN rm -rf /usr/local/tomcat/webapps/*
COPY --from=builder /deployServletProject/target/chuong6.1-1.0.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
