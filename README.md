# Authenticate to Azure
    `az login`

# Authenticate to AKS
    `az aks get-credentials --resource-group rg-dev --name dev-k8s`

# Authenticate to ACR (pull images):
    `az acr login --name  holon`  

# Deploy application by kubectl
    `kubectl apply -f ./deployment/hallo-azure.yaml`

## Build docker
    `docker build --build-arg JAR_FILE=build/libs/\*.jar -t springio/gs-spring-boot-docker .`

## Run docker app:
    `docker run -p 8080:8080 holon.azurecr.io/hallo-azure:latest`

