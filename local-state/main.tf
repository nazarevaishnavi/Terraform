# No backend configuration and state files are stored locally after terraform apply 
terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}
provider "aws" {
    region = "ap-south-1"   
}
resource "aws_instance" "app_server" {
    ami    = "ami-0dee22c13ea7a9a67"
    instance_type = "t2.micro"

    tags = {
        Name = "Terraform Demo"
    }
}

