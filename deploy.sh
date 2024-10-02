#!/bin/bash

# Check if CONTAINER_REGISTRY and VERSION are set
if [ -z "$CONTAINER_REGISTRY" ] || [ -z "$VERSION" ]; then
  echo "Error: CONTAINER_REGISTRY and VERSION must be set."
  exit 1
fi

# Substitute environment variables and apply the Kubernetes configuration
envsubst < ./scripts/kubernetes/deployment.yaml | kubectl apply -f -

