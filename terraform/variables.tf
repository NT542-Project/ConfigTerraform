variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "ap-southeast-1"
}

variable "availability_zone" {
  description = "Availability zone for subnets"
  type        = string
  default     = "ap-southeast-1a"
}

variable "ami_id" {
  description = "AMI ID to use for all EC2 instances"
  type        = string
}

variable "key_pair_name" {
  description = "Name for the AWS key pair"
  type        = string
  default     = "ec2-keypair"
}

variable "public_key" {
  description = "SSH public key"
  type        = string
  sensitive   = true
}
