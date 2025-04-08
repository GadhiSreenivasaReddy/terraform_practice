region = "ap-south-1"
vpc_cidr             = "10.0.0.0/16"
#public_subnet_cidr   = "10.0.3.0/24"
#private_subnet_cidr  = "10.0.2.0/24"
ami_id               = "ami-0e35ddab05955cf57"
instance_type        = "t2.micro"
instance_availability_zone = "ap-south-1a"
public_availability_zone = "ap-south-1a"
private_availability_zone = "ap-south-1b"
alb_name = "sreenivasaalb"
default_tags = {
  Name  = "Sreenivasa"
  Owner = "CSP"
}
