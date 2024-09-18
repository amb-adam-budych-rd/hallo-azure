FROM eclipse-temurin:21
RUN mkdir /app
COPY ./app.jar /app
WORKDIR /app
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]