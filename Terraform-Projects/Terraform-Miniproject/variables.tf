variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
}

variable "subnet1_cidr" {
  description = "CIDR block for subnet 1"
  type        = string
}

variable "subnet2_cidr" {
  description = "CIDR block for subnet 2"
  type        = string
}

variable "az1" {
  description = "Availability Zone 1"
  type        = string
}

variable "az2" {
  description = "Availability Zone 2"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for EC2"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "bucket_name" {
  description = "S3 bucket name"
  type        = string
}

variable "alb_name" {
  description = "Application Load Balancer name"
  type        = string
}

variable "target_group_name" {
  description = "ALB target group name"
  type        = string
}