terraform {
  backend "s3" {
    region = "us-east-1"
    key    = "mytestVPC"
    bucket = "akyinabucket"
  }

}


module "ec2_instance" {
  source        = "./../modules/ec2/"
  ami_id        = "ami-04a81a99f5ec58529"
  instance_type = "t2.micro"
  region        = "us-east-1"
  instance_name = "my_terraform_ec2"
}


module "vpc" {
  source               = "../modules/vpc"
  cidr_block           = "10.0.0.0/16"
  vpc_name             = "Personalized-Greetings-VPC"
  public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  private_subnet_cidrs = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
  default_tags = {
    Environment = "Dev"
    Project     = "Personalized-Greetings"
  }
}