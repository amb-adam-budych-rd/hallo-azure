FROM eclipse-temurin:21
RUN mkdir /app
COPY app.jar /app/app.jar
WORKDIR /app
ENTRYPOINT ["java","-jar","app.jar"]