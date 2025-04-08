resource "aws_instance" "ec2-gsr" {
  ami               = var.ami_id
  instance_type     = var.instance_type
  subnet_id         = var.subnet_id
  security_groups   = var.security_group_ids
  tags              = var.default_tags
  availability_zone = var.availability_zone
}

output "instance_id" {
  value = aws_instance.ec2-gsr.id
}