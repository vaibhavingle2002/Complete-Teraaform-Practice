variable "vpc_cidr_block" {
  description = "cidr range value for vpc"
  type        = string
}

variable "subnet_cidr_block" {
  type        = string
  description = "cidr range value for subnet"
}

variable "subnet_az" {
  description = "Availability Zone in which Subnet will get Created."
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "instance_name" {
  description = "name of my ec2 instance"
  type        = string

}

variable "bucket_name" {
  description = "S3 bucket Name"
  type        = string
}