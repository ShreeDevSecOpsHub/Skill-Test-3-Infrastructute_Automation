variable "aws_region" {
  description = "The AWS region to deploy in"
  default     = "eu-west-2"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami_id" {
  description = "Ubuntu 20.04 LTS AMI ID"
  default     = "ami-09dbc7ce74870d573" 
}