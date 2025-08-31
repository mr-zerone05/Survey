# Step 1: Build project với Maven
FROM maven:3.9.2-eclipse-temurin-17 AS build

WORKDIR /app

# Copy pom.xml và source code
COPY pom.xml .
COPY src ./src

# Build WAR, bỏ qua test để nhanh
RUN mvn clean package -DskipTests

# Step 2: Dùng Tomcat 10 + JDK 17
FROM tomcat:10.1-jdk17

# Xóa webapps mặc định
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR từ stage build vào Tomcat
COPY --from=build /app/target/ROOT.war /usr/local/tomcat/webapps/ROOT.war

# Expose cổng Tomcat
EXPOSE 8080

# Chạy Tomcat
CMD ["catalina.sh", "run"]

