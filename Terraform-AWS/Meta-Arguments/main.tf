
variable "instances" {
  type = map(object({
    instance_type = string
    availability_zone = string
  }))
  default = {
    "web-server-1" = { instance_type = "t2.micro", availability_zone = "ap-south-1a" }
    "web-server-2" = { instance_type = "t2.small", availability_zone = "ap-south-1b" }
    "app-server-1" = { instance_type = "t3.medium", availability_zone = "ap-south-1c" }
    "db-server-1"  = { instance_type = "m5.large", availability_zone = "ap-south-1a" }
  }
}

resource "aws_instance" "servers" {
  for_each = var.instances

  ami               = "ami-08ee1453725d19cdb"
  instance_type     = each.value.instance_type
  availability_zone = each.value.availability_zone

  tags = {
    Name = each.key
  }
}


instance_names  = {
      + app-server-1 = "app-server-1"
      + db-server-1  = "db-server-1"
      + web-server-1 = "web-server-1"
      + web-server-2 = "web-server-2"
    }

If you need Output as Name: Value: output "instance_names_with_Name" {
---------------------------------------------------------------

instance_names_with_Name = {
      + app-server-1 = {
          + Name = "app-server-1"
        }
      + db-server-1  = {
          + Name = "db-server-1"
        }
      + web-server-1 = {
          + Name = "web-server-1"
        }
      + web-server-2 = {
          + Name = "web-server-2"
        }
    }