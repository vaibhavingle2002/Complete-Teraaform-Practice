output "s3_bkt_arn" {
  value = data.aws_s3_bucket.example_bucket.arn
}

output "ec2_ip" {
  value = aws_instance.example.public_ip
}

output "vpc_id" {
  value = data.aws_vpc.default.id
}

output "subnet_id" {
  value = data.aws_subnet.default_subnet.id
}