resource "aws_instance" "MY-EC2" {
    ami="ami-0942ecd5d85baa812"
    instance_type = "t2.micro"
    key_name = "ProjectV"
}
resource "aws_s3_bucket" "s3" {
    bucket = "vaibhavsssbucketsss"
    depends_on = [ aws_instance.MY-EC2 ]
    
}