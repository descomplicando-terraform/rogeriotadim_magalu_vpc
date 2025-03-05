resource "mgc_network_vpcs" "vpc" {
  name        = var.name
  description = var.description
}

output "vpc" {
  value = mgc_network_vpcs.vpc
}
