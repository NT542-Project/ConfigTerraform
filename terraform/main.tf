resource "aws_key_pair" "this" {
  key_name   = var.key_pair_name
  public_key = var.public_key
}

module "vpc" {
  source = "./modules/vpc"

  vpc_name            = "main-vpc"
  vpc_cidr            = "10.0.0.0/16"
  public_subnet_cidr  = "10.0.2.0/24"
  private_subnet_cidr = "10.0.1.0/24"
  availability_zone   = var.availability_zone
}

module "security_group" {
  source = "./modules/security_group"

  name                = "main-security-group"
  vpc_id              = module.vpc.vpc_id
  allowed_cidr_blocks = ["0.0.0.0/0"]
}

module "loadbalancer" {
  source = "./modules/ec2"

  name               = "loadbalancer"
  ami_id             = var.ami_id
  instance_type      = "t3.micro"
  subnet_id          = module.vpc.public_subnet_id
  key_name           = aws_key_pair.this.key_name
  security_group_ids = [module.security_group.security_group_id]

  extra_tags = {
    Type = "loadbalancer"
  }
}

module "apacheserver1" {
  source = "./modules/ec2"

  name               = "apacheserver1"
  ami_id             = var.ami_id
  instance_type      = "t3.micro"
  subnet_id          = module.vpc.private_subnet_id
  key_name           = aws_key_pair.this.key_name
  security_group_ids = [module.security_group.security_group_id]

  extra_tags = {
    Type = "apacheserver"
  }
}

module "apacheserver2" {
  source = "./modules/ec2"

  name               = "apacheserver2"
  ami_id             = var.ami_id
  instance_type      = "t3.micro"
  subnet_id          = module.vpc.private_subnet_id
  key_name           = aws_key_pair.this.key_name
  security_group_ids = [module.security_group.security_group_id]

  extra_tags = {
    Type = "apacheserver"
  }
}

module "observabilitystack" {
  source = "./modules/ec2"

  name               = "observabilitystack"
  ami_id             = var.ami_id
  instance_type      = "t3.small"
  subnet_id          = module.vpc.private_subnet_id
  key_name           = aws_key_pair.this.key_name
  security_group_ids = [module.security_group.security_group_id]

  extra_tags = {
    Type = "observabilitystack"
  }
}
