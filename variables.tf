variable "aws_region" {
  description = "AWS region where resources will be deployed"
  default     = "us-east-1"  # Change this to your desired region
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  default     = "ami-0c55b159cbfafe1f0"  # Ubuntu 20.04 LTS AMI ID
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  default     = "t2.micro"
}

variable "profile" {
  default = "prince"
}