variable "additional_node_pools" {
  type = list(object({
    name               = string
    vm_size            = string
    node_count         = number
    mode               = string
    availability_zones = list(string)
    os_type            = string
    priority           = string
    tags               = map(string)
    node_labels        = map(string)
  }))
}

variable "kubernetes_cluster_id" {
  description = "Default nodepool VM size"
  default     = "Standard_D2_v2"
}
