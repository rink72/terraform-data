module "data" {
  source = "../modules/data"
}

output "ip_library" {
  value = module.data.ip_library

  precondition {
    condition     = length(module.data.ip_library) > 0
    error_message = "No IP values found in the library"
  }
}
