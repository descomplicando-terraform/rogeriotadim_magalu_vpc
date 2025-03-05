module "vpc" {
  source      = "../"
  name        = "vpc-test"
  description = "vpc created by Terraform in order to test"
  # providers = {
  #   key = "magalucloud/mgc"
  # }
}

output "name" {
  value = module.vpc.vpc.name
}