resource "aws_vpc" "vpc_creation" {
    cidr_block = var.vpc_cidr_block
}
resource "aws_subnet" "public_subnet_Creation" {
    vpc_id = aws_vpc.vpc_creation.id
    cidr_block = var.subnet_cidr_block
    availability_zone = var.subnet_az
}