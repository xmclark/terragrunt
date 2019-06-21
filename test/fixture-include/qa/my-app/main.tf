terraform {
  backend "s3" {}
}

variable "terragrunt_dir" {
  default = ""
}

variable "parent_terragrunt_dir" {
  default = ""
}

output "terragrunt_dir" {
  value = var.terragrunt_dir
}

output "parent_terragrunt_dir" {
  value = var.parent_terragrunt_dir
}

# Create an arbitrary local resource
data "template_file" "test" {
  template = "Hello, I am a template."
}
