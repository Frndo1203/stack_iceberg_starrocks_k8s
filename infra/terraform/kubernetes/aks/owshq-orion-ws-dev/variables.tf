variable "resource_group_location" {
  type        = string
  default     = "eastus2"
}

variable "resource_group_name_prefix" {
  type        = string
  default     = "rg-owshq-orion-ws-dev"
}

variable "cluster_name" {
  type        = string
  default     = "owshq-orion-ws-dev"
}

variable "dns_prefix" {
  type        = string
  default     = "dns-owshq-orion-ws-dev"
}

variable "vm_size" {
  type        = string
  default     = "Standard_D8s_v3"
}


variable "node_count" {
  type        = number
  default     = 3
}

variable "msi_id" {
  type        = string
  default     = null
}