terraform {
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
    }
    random = {
      source = "hashicorp/random"
    }
  }
}

provider "kubernetes" {
  alias = "cd"
}

provider "kubernetes" {
  alias = "target"

  config_path = var.target_kube_config_path
}