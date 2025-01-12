resource "aws_instance" "Ec2" {
    ami = "ami-0942ecd5d85baa812"
    instance_type = "t2.micro"
    key_name = "ProjectV"
}

resource "aws_s3_bucket" "S3bucketss" {
    bucket = "vaibhavsssbucketvv" 
}

#terraform apply -target=aws_s3_bucket.dependent
#terraform destroy -target=aws_s3_bucket.dependent