terraform {
  backend "s3" {
    region = "us-east-1"
    key    = "mytestVPC"
    bucket = "akyinabucket"
  }

}



provider "aws" {
  region = var.region
}
