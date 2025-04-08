variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}
variable "region" {
  type = string
  
}
variable "instance_availability_zone" {
  type = string
}

variable "public_availability_zone" {
  type = string
}

variable "private_availability_zone" {
  type = string
}
variable "alb_name" {
  type = string
  
}

variable "ami_id" {
  description = "AMI ID for EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "Instance type for EC2 instances"
  type        = string
}

variable "default_tags" {
  description = "Tags for the resources"
  type        = map(string)
}
