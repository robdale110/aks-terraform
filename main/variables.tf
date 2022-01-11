variable "cluster_name" {
  description = "The name for the AKS cluster"
  default     = "learnk8scluster"
}
variable "env_name" {
  description = "The environment for the AKS cluster"
  default     = "dev"
}
variable "resource_group" {
  description = "The resource group for the AKS cluster"
  default     = "learnk8sResourceGroup"
}
variable "location" {
  description = "The location for the resource group"
  default     = "northeurope"
}
variable "instance_type" {
  description = "The instance type for the node pool"
  default     = "standard_d2_v2"
}
