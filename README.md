## Build docker
`docker build --build-arg JAR_FILE=build/libs/\*.jar -t springio/gs-spring-boot-docker .`


## Run docker app: 

`docker run -p 8080:8080 holon.azurecr.io/hallo-azure:ccef1c980ca3514546b764a0fab7ab16f11c5c7e`

