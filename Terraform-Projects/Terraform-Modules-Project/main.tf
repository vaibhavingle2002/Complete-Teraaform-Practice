module "vpc" {
  source            = "./modules/vpc"
  vpc_cidr_block    = var.vpc_cidr_block
  subnet_cidr_block = var.subnet_cidr_block
  subnet_az         = var.subnet_az

}


module "ec2" {
  source        = "./modules/ec2-module"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  subnet_id     = module.vpc.subnet_id
  instance_name = var.instance_name
}

module "s3" {
  source      = "./modules/s3-bkt-module"
  bucket_name = var.bucket_name
}