variable "ami" {
    description = "AMI given for EC2 Creation"
    type = string
    default = ""
}

variable "instance_type" {
    description = "type of instance type is given"
    type = string
    default = ""
  
}
variable "key_name" {
    description = "KeyPair Name Given"
    type = string
    default = ""
  
}