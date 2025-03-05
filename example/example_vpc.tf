module "vpc" {
  source      = "../"
  name        = var.name
  description = "vpc created by Terraform in order to test"
}

output "vpc" {
  value = module.vpc.vpc
}

output "vpc_name" {
  value = module.vpc.vpc.name
}
