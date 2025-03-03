resource "mgc_network_vpcs" "vpc" {
  name        = var.name
  description = var.description
}

output "vpc_id" {
  value = mgc_network_vpcs.vpc.id
}

output "vpc_name" {
  value = mgc_network_vpcs.vpc.name
}