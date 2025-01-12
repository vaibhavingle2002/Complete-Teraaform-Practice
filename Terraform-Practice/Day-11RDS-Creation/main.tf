resource "aws_db_instance" "mysql" {
  engine = "mysql"
  engine_version = "8.0"
  identifier = "rds-using-terraform"
  username = "vaibhav"
  password = "vaibhav123"
  instance_class = "db.t3.micro"
  allocated_storage = 20
}
