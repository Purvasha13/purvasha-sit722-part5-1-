#!/bin/bash

# Ensure CONTAINER_REGISTRY is set, otherwise exit
[ -z "$CONTAINER_REGISTRY" ] && { echo "Error: CONTAINER_REGISTRY is not set."; exit 1; }

# Ensure VERSION is set, otherwise exit
[ -z "$VERSION" ] && { echo "Error: VERSION is not set."; exit 1; }

# Push the Docker images with the specified version
for image in book_catalog inventory_management; do
  docker push "$CONTAINER_REGISTRY.azurecr.io/$image:$VERSION" || { echo "Error: Failed to push $image"; exit 1; }
done
