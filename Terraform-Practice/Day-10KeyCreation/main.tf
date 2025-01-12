resource "aws_key_pair" "name" {
    key_name = "GENKEY-Terraform"
    public_key = file("~/.ssh/id_rsa.pub") #here you need to define public key file path

  
}

resource "aws_instance" "MyEc2" {
  ami                    = "ami-0942ecd5d85baa812"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.name.key_name
  tags = {
    Name="KEYGEN-EC2"
  }
}