variable "name" {
  description = "The name of the VPC"
  type        = string
}

variable "description" {
  description = "The description for the VPC"
  type        = string
  default     = "vpc created by Terraform"
}
