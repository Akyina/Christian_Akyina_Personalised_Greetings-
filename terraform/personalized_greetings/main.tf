module "ec2_instance" {
  source        = "./../modules/"
  ami_id        = "ami-04a81a99f5ec58529"
  instance_type = "t2.micro"
  region        = "us-west-2"
  instance_name = "my_terraform_ec2"
}