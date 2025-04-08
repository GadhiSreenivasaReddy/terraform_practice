variable "subnets_id" {
  description = "List of subnet IDs for the ALB"
  type        = list(string)
}
variable "alb_name" {
  type = string
  
}

variable "security_groups" {
  description = "List of security group IDs for the ALB"
  type        = list(string)
}

variable "default_tags" {
  description = "Tags for the resources"
  type        = map(string)
}
