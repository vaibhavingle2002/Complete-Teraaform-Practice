variable "ami" {
    description = "AMI given for EC2 Creation"
    type = string
    default = "ami-0942ecd5d85baa812"
}

variable "instance_type" {
    description = "type of instance type is given"
    type = string
    default = "t2.micro"
  
}
variable "key_name" {
    description = "KeyPair Name Given"
    type = string
    default = "ProjectV"
  
}