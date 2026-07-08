terraform {
  required_version = ">= 1.8.0"
}

variable "namespace" {
  type    = string
  default = "credleaf"
}

output "namespace" {
  value = var.namespace
}
