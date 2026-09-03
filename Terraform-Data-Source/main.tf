data "aws_vpc" "default" {
  default = true
}

data "aws_subnet" "default_subnet" {
  vpc_id            = data.aws_vpc.default.id
  availability_zone = "ap-south-1a"
}
resource "aws_instance" "example" {
  ami           = "ami-08ee1453725d19cdb"
  instance_type = "t3.micro"
  subnet_id     = data.aws_subnet.default_subnet.id
}

data "aws_s3_bucket" "example_bucket" {
  bucket = "vaibhav-datasource-bkt"
}


