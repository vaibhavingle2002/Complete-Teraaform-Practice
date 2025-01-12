//Local Block 
locals {
  region        = "us-east-2"
  environment   = "dev"
  instance_type = "t2.micro"
  ami           = "ami-095d85baa42ecd812"
  key_name      = "ProjectV"
}

//Resource Block
resource "aws_instance" "example" {
  ami           = local.ami
  instance_type = local.instance_type
  key_name = local.key_name

  tags = {
    Name        = "ExampleInstance"
    Environment = local.environment
  }
}
