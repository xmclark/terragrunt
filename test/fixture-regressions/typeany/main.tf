variable "name" {
  type    = any
  default = null
}

variable "foo" {
  type    = string
  default = null
}

output "name" {
  value = var.name
}

output "foo" {
  value = var.foo
}
