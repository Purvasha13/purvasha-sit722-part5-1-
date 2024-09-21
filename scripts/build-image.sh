# Your Solution
#!/bin/bash

# Build Docker images for both services
docker build -t book_catalog:v1 ./book_catalog
docker build -t inventory_management:v1 ./inventory_management
