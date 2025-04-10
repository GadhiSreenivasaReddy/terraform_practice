variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_availability_zone" {
  type = string
}

variable "private_availability_zone" {
  type = string  
}
#variable "public_subnet_cidr" {
 # description = "CIDR block for the public subnet"
 # type        = string
#}

#variable "private_subnet_cidr" {
 # description = "CIDR block for the private subnet"
 # type        = string
#}


variable "default_tags" {
  description = "Default tags for resources"
  type        = map(string)
}
