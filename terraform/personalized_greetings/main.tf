module "ec2_instance" {
  source        = "./../modules/ec2/"
  ami_id        = "ami-04a81a99f5ec58529"
  instance_type = "t2.micro"
  region        = "us-east-1"
  instance_name = "my_terraform_ec2"
}
