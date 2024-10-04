variable "location" {
  description = "The Azure region where resources will be created"
  default     = "Australia East"
}

variable "resource_group_name" {
  description = "Name of the Azure resource group"
  default     = "project5"
}

variable "container_registry_name" {
  description = "Name of the Azure Container Registry"
  default     = "CRpart5"
}

variable "kubernetes_cluster_name" {
  description = "Name of the Azure Kubernetes Cluster"
  default     = "AKSpart5"
}
