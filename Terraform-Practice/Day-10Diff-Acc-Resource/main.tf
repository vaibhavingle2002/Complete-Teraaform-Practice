resource "aws_instance" "MyEc2" {
  ami                    = "ami-0942ecd5d85baa812"
  instance_type          = "t2.micro"
  key_name               = "ProjectV"
  tags = {
    Name="Diff-Account-EC2"
  }
}