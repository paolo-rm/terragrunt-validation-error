variable "validation-testing" {
  type = string
  description = "hello"
}

module "validation-testing" {
  source = "../pretend-remote-module"
  validation-testing = var.validation-testing # change this to string that doesn't contain "hello" to make terragrunt validate report validation error
}