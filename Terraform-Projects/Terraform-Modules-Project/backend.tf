terraform {
  backend "s3" {

    bucket = "terrafrom-modules-project-bkt"
    key    = "modules/terraform.tfstate"
    region = "ap-south-1"
  }
}