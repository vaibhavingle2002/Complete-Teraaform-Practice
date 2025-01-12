variable "ports" {
  default = [22, 80, 443] # SSH, HTTP, HTTPS
}

variable "cidr_blocks" {
  default = ["192.168.1.0/24", "10.0.0.0/16"] # CIDR blocks for specific ranges
}