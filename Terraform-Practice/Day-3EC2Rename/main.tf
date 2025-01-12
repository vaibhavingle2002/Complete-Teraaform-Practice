resource "aws_instance" "name" {
    
    ami = "ami-0942ecd5d85baa812"
    instance_type = "t2.micro"
    key_name = "ProjectV"

    tags = {
    Name = "Gayatri" 
  }
}