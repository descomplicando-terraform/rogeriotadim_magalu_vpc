# valid_string_concat.tftest.hcl

variables {
  name = "vpc-test"
  cidr_block = "192.168.143.0/24"
}

run "create_vpc" {
  command = apply

  assert {
    condition     = module.vpc.vpc_name == var.name
    error_message = "invalid name"
  }

}
