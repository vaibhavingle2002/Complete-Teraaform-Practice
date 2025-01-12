module "Ec2-Creation" {
    source = "../Day-9Module-Template"
    ami="ami-0942ecd5d85baa812"
    instance_type="t2.micro"
    key_name="ProjectV"
  
}