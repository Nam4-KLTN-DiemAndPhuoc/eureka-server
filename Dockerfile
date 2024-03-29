# FROM maven:3.6.0-jdk-11-slim AS build
# COPY src /app/src
# COPY pom.xml /app
# RUN mvn -f /app/pom.xml clean package

# FROM openjdk:11
# COPY --from=build /app/target/eureka-server-0.0.1-SNAPSHOT.jar eureka-server-0.0.1-SNAPSHOT.jar
# EXPOSE 8761
# ENTRYPOINT [ "java","-jar","eureka-server-0.0.1-SNAPSHOT.jar" ]

FROM openjdk:11 
ADD /target/eureka-server-0.0.1-SNAPSHOT.jar eureka-server-0.0.1-SNAPSHOT.jar
EXPOSE 8761
ENTRYPOINT ["java","-jar","eureka-server-0.0.1-SNAPSHOT.jar"]