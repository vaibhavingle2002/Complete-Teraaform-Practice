terraform {
  backend "s3" {

    bucket = "miniproject-s3-terraform-bkt"
    key    = "project/terraform.tfstate"
    region = "ap-south-1"
  }
}