output "vpc_id" {
  value = aws_vpc.vpc.id
}
output "public_subnet_id" {
  value = aws_subnet.publicsubnet.id
}

output "private_subnet_id" {
  value = aws_subnet.privatesubnet.id
}

output "subnet_ids" {
  value = [
    aws_subnet.publicsubnet.id,
    aws_subnet.privatesubnet.id
  ]
}
