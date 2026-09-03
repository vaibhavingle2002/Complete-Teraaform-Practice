terraform {
  backend "s3" {

    bucket = "vaibhav-datasource-bkt"
    key    = "data-block/terraform.tfstate"
    region = "ap-south-1"
  }
}