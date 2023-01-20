variable "validation-testing" {
  type = string
  description = "hello"
  validation {
    condition = contains(["hello"], var.validation-testing)
    error_message = "doesn't contain hello"
  }
}

locals {
  validation-testing = var.validation-testing
}

output "validation-testing" {
  value = local.validation-testing
}