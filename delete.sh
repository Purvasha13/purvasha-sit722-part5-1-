#!/bin/bash

# Check if CONTAINER_REGISTRY is set
if [ -z "$CONTAINER_REGISTRY" ]; then
  echo "Error: CONTAINER_REGISTRY is not set."
  exit 1
fi

# Check if VERSION is set
if [ -z "$VERSION" ]; then
  echo "Error: VERSION is not set."
  exit 1
fi

envsubst < ./scripts/kubernetes/deployment.yaml | kubectl delete -f -


