locals {
  ip_library = yamldecode(file("${path.module}/../../configuration/ip-library.yml"))
}


output "ip_library" {
  value       = local.ip_library
  description = "Library of IP values that can be used in deployments"

  precondition {
    condition     = length(local.ip_library) > 0
    error_message = "No IP values found in the library"
  }
}
