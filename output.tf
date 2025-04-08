
output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnet_ids" {
  value = module.vpc.subnet_ids
}

output "public_subnet_id" {
  value = module.vpc.public_subnet_id
}

output "private_subnet_id" {
  value = module.vpc.private_subnet_id
}

output "instance_id" {
  value = module.ec2.instance_id
}
