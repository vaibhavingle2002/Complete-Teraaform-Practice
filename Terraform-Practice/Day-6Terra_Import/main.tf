resource "aws_instance" "Vaibhav" {
    ami = "ami-0c80e2b6ccb9ad6d1"
    instance_type = "t2.micro"
    key_name = "ProjectV"

    tags = {
      Name = "My-EC2Server"
    }
  
}

resource "aws_s3_bucket" "MyBucket" {
    
  
}