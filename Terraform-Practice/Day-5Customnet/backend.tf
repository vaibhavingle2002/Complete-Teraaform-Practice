terraform {
backend "s3" {
    bucket="bucketbygayatriss"
    region = "us-east-2"
    key = "vaibhav/terraform.tfstate"
    encrypt = true
}
}