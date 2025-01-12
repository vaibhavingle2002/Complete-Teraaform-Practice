
# AWS Key Pair
resource "aws_key_pair" "example" {
  key_name   = "task"
  public_key = file("~/.ssh/id_rsa.pub")  # Ensure the file path is correct
}

# VPC Configuration
resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "sub1" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = "10.0.0.0/24"
  availability_zone       = "us-east-2a"
  map_public_ip_on_launch = true
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.myvpc.id
}

resource "aws_route_table" "RT" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}

resource "aws_route_table_association" "rta1" {
  subnet_id      = aws_subnet.sub1.id
  route_table_id = aws_route_table.RT.id
}

# Security Group
resource "aws_security_group" "webSg" {
  name   = "web"
  vpc_id = aws_vpc.myvpc.id

  ingress {
    description = "Allow HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Web-sg"
  }
}

# EC2 Instance with Provisioners
resource "aws_instance" "server" {
  ami                    = "ami-0942ecd5d85baa812"  # Replace with your AMI
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.example.key_name
  vpc_security_group_ids = [aws_security_group.webSg.id]
  subnet_id              = aws_subnet.sub1.id

  # SSH Connection Configuration
  connection {
    type        = "ssh"
    user        = "ec2-user"  # Use the appropriate username for your AMI
    private_key = file("~/.ssh/id_rsa")  # Ensure the private key path is correct
    host        = self.public_ip
  }

  # Local Exec Provisioner
  provisioner "local-exec" {
    command = "touch Vaibhav"
  }

  # File Provisioner
  provisioner "file" {
    source      = "JAVA.txt"  # Replace with the path to your local file
    destination = "/home/ec2-user/JAVA.txt"  # Path on the remote instance
  }

  # Remote Exec Provisioner
  provisioner "remote-exec" {
    inline = [
      "touch PYTHON",
      "echo hello from aws >> PYTHON"
    ]
  }
}
