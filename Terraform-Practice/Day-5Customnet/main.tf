#VPC Creation 
resource "aws_vpc" "vaibhav_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name="VaibhavsVPC"
  }
}

#Subnet Creation 
resource "aws_subnet" "vaibhav_subnet" {
  cidr_block = "10.0.0.0/24"
  vpc_id = aws_vpc.vaibhav_vpc.id
  tags = {
    Name="Mypublic-subnet"
  }
}

#Internet Gateway Creation
resource "aws_internet_gateway" "vaibhav_ig" {
  vpc_id = aws_vpc.vaibhav_vpc.id
  tags = {
    Name="My-ig"
  }
}

#Route table Creation and Edit Route
resource "aws_route_table" "vaibhavs_rt" {
vpc_id = aws_vpc.vaibhav_vpc.id
tags = {
  Name="public-rt"
}
route {
    cidr_block="0.0.0.0/0"
    gateway_id = aws_internet_gateway.vaibhav_ig.id
}
} 

#Edit Subnet Association 
resource "aws_route_table_association" "sub-Association" {
  subnet_id = aws_subnet.vaibhav_subnet.id
  route_table_id = aws_route_table.vaibhavs_rt.id
}

#security Group
resource "aws_security_group" "vaibhav_sg" {
  name = "ssh only"
  vpc_id = aws_vpc.vaibhav_vpc.id
  tags = {
    Name="custom-sg"
  }
  ingress {
    description ="ssh"
    from_port = 22
    to_port =22
    protocol ="TCP"
    cidr_blocks =["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol ="-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

#AWS EC2 Creation
resource "aws_instance" "EC2" {
  ami = "ami-0c80e2b6ccb9ad6d1"
  instance_type = "t2.micro"
  key_name = "ProjectV"
  subnet_id = aws_subnet.vaibhav_subnet.id
  security_groups = [ aws_security_group.vaibhav_sg.id ]
  associate_public_ip_address = true
  tags = {
    Name = "TERRAFORM EC2"
  }
}