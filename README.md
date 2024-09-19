## Build docker
`docker build --build-arg JAR_FILE=build/libs/\*.jar -t springio/gs-spring-boot-docker .`


## Run docker app: 

`docker run -p 8080:8080 holon.azurecr.io/hallo-azure:latest`

