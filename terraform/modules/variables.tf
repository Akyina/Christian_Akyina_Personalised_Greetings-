variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default = "ami-04a81a99f5ec58529"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
  #   default     = "my-ec2-instance"
}

variable "key_name" {
  description = "Name of the SSH key pair to use"
  type        = string
  default     = "general_keys"
}