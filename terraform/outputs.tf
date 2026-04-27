output "security_group_id" {
  description = "ID of the main security group"
  value       = module.security_group.security_group_id
}

output "vpc_id" {
  description = "ID of the VPC"
  value       = module.vpc.vpc_id
}

output "public_subnet_id" {
  description = "ID of the public subnet"
  value       = module.vpc.public_subnet_id
}

output "private_subnet_id" {
  description = "ID of the private subnet"
  value       = module.vpc.private_subnet_id
}

output "loadbalancer_instance_id" {
  description = "Instance ID of the load balancer EC2"
  value       = module.loadbalancer.instance_id
}

output "loadbalancer_public_ip" {
  description = "Public IP of the load balancer EC2"
  value       = module.loadbalancer.public_ip
}

output "apacheserver1_instance_id" {
  description = "Instance ID of Apache server 1"
  value       = module.apacheserver1.instance_id
}

output "apacheserver1_private_ip" {
  description = "Private IP of Apache server 1"
  value       = module.apacheserver1.private_ip
}

output "apacheserver2_instance_id" {
  description = "Instance ID of Apache server 2"
  value       = module.apacheserver2.instance_id
}

output "apacheserver2_private_ip" {
  description = "Private IP of Apache server 2"
  value       = module.apacheserver2.private_ip
}

output "observabilitystack_instance_id" {
  description = "Instance ID of the observability stack EC2"
  value       = module.observabilitystack.instance_id
}

output "observabilitystack_private_ip" {
  description = "Private IP of the observability stack EC2"
  value       = module.observabilitystack.private_ip
}
