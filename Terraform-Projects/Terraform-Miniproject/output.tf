# VPC ID
output "vpc_id" {
  value = aws_vpc.myvpc.id
}

# Subnet ID
output "subnet_1_id" {
  value = aws_subnet.sub1.id
}

output "subnet_2_id" {
  value = aws_subnet.sub2.id
}

# EC2 Instance ID
output "webserver1_id" {
  value = aws_instance.web1.id
}

output "webserver2_id" {
  value = aws_instance.web2.id
}

# ALB 
output "alb_id" {
  value = aws_lb.alb.id
}

output "alb_dns_name" {
  value = aws_lb.alb.dns_name
}

output "alb_listener_port" {
  value = aws_lb_listener.listener.port
}

# Target Group
output "target_group_arn" {
  value = aws_lb_target_group.tg.arn
}