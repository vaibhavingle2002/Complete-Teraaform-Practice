provider "aws" {
  region ="ap-south-1"
}

variable "ami_id" {
    type = string
    default ="ami_id_of_Instance"

}

variable "Instance_type" {
  type = string
  default = "t3.micro"
}

variable "Instance_tag" {
    type = map(string)
    default = {
      "Name" = "MyEC2Server"
    }
  
}