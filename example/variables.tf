variable "name" {
  description = "API Key"
  type        = string
  default     = "vpc-test"
}

variable "api_key" {
  description = "API Key"
  type        = string
  sensitive   = true
}
