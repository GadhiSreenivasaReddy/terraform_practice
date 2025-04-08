variable "vpc_id" {
  description = "VPC ID for the security group"
  type        = string
}

variable "default_tags" {
  description = "Tags for the resources"
  type        = map(string)
}
