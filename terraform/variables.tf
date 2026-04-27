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
  default     = "ami-0d82255589f4eaca8"
}

variable "key_pair_name" {
  description = "Name for the AWS key pair"
  type        = string
  default     = "accesskeyforec2"
}

variable "public_key" {
  description = "SSH public key"
  type        = string
  sensitive   = true
}
