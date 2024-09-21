# Your Solution
#!/bin/bash

# Log in to the Azure Container Registry
az acr login --name project4containeregistry

# Push Docker images to the registry
docker tag book_catalog:v1 crpart5.azurecr.io/book_catalog:latest
docker tag inventory_management:v1 crpart5.azurecr.io/inventory_management:latest

docker push crpart5.azurecr.io/book_catalog:latest
docker push crpart5.azurecr.io/inventory_management:latest
