FROM eclipse-temurin:25-jre
WORKDIR /app
COPY target/*.jar /app/app.jar
ENV SPRING_PROFILES_ACTIVE=native
EXPOSE 8888
ENTRYPOINT ["java","-jar","/app/app.jar"]