resource "aws_lb" "alb" {
  name = var.alb_name
  internal           = false
  load_balancer_type = "application"
  subnets            = var.subnets_id
  security_groups    = var.security_groups
  tags               = var.default_tags
}
output "dns_name" {
  value = aws_lb.alb.dns_name
}
