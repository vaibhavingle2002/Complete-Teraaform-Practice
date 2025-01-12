output "instance_type" {
  value       = aws_instance.name.instance_type
  description = "The Type of Instance using by Developer "
}

output "public_ip" {
  value       = aws_instance.name.public_ip
  description = "The public IP of the EC2 instance"
}

