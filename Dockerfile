FROM eclipse-temurin:21
RUN mkdir /app
COPY ./app.jar /app
WORKDIR /app
ENTRYPOINT ["java","-jar","app.jar"]