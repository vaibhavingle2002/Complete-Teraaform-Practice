resource "aws_security_group" "example" {
  name        = "example-sg"
  description = "Security group with dynamically generated rules"

  ingress = [
    for port in var.ports : {
      from_port   = port
      to_port     = port
      protocol    = "tcp"
      cidr_blocks = var.cidr_blocks
    }
  ]

  egress = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}
