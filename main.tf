provider "aws" {
  region = var.aws_region
  profile = "prince"
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
}

output "public_ip" {
  value = aws_instance.example.public_ip
}
