resource "aws_instance" "Ec2" {
    ami = "ami-0942ecd5d85baa812"
    instance_type = "t2.micro"
    key_name = "ProjectV"
    user_data = file("script.sh")
}
