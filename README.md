# Authenticate to Azure
    az login

# Authenticate to AKS
    az aks get-credentials --resource-group holon-dev --name aks-dev

# Authenticate to ACR (pull images):
    az acr login --name  holon

# Deploy application by kubectl
    kubectl apply -f ./deployment/hallo-azure.yaml

## Build docker
    docker build --build-arg JAR_FILE=build/libs/\*.jar -t springio/gs-spring-boot-docker .

## Run docker app:
    docker run -p 8080:8080 holon.azurecr.io/hallo-azure:latest

## Forward local port to pod port:
 
### View the ReplicaSet status

    kubectl get replicaset

### Verify that the App is running in the Pod, and display port on which listening on

    kubectl get pod hallo-azure-d447f98b-5k2l7  --template='{{(index (index .spec.containers 0).ports 0).containerPort}}{{"\n"}}'

### Forward local port to replicaset port
    
    kubectl port-forward hallo-azure-d447f98b-5k2l7 28015:8080

### Forward port by app name and namespace 

    kubectl port-forward $(kubectl get pods --namespace default | grep hallo-azure | awk '{print $1}') 28015:8080

## List VM SKU available in westeurope

    az vm list-skus --location westeurope --zone --size standard_ -o table

## login to helm

     echo {password} | helm registry login holon83rrl.azurecr.io --username {username} --password-stdin

## get helm chart

    helm pull oci://holon83rrl.azurecr.io/charts/hol-embedding-service:0.1.0

## install helm chart

    helm install holl-embedding-service-1 oci://holon83rrl.azurecr.io/charts/hol-embedding-service

