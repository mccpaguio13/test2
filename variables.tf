variable "target_kube_config_path" {
  type        = string
  description = "see workflow.yaml"
  default     = "/secret/target/kube-config"
}

variable "component" {
  type        = string
  description = "name of component, typically matches repo name and component name in release.json"
  default     = "sst-idr-service"
}

variable "part_of" {
  type        = string
  description = "the product or larger component that this component belongs to"
  default     = "sst-idr-service"
}

variable "resource_prefix" {
  type        = string
  description = "sst-idr-service"
  default     = "sst-idr-service"
}

variable "target" {
  type    = string
  default = "dev"
}

variable "target_base_dns" {
  type    = string
  default = "live.deltek.local"
}

variable "component_version" {
  type = string
  default = "dev"
}

locals {
  default_labels = {
    "app.kubernetes.io/version"   = var.component_version
    "app.kubernetes.io/component" = var.component
    "app.kubernetes.io/part-of"   = var.part_of
  }
}
