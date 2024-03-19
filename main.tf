terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.41.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
  profile = var.profile
  shared_credentials_files = ["~/.aws/credentials"]
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
}

output "public_ip" {
  value = aws_instance.example.public_ip
}
