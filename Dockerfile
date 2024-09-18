FROM eclipse-temurin:21
ARG JAR_FILE=*.jar
COPY ${JAR_FILE} app2.jar
ENTRYPOINT ["java","-jar","./app2.jar"]