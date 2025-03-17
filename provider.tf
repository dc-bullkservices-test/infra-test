terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.35.0"
    }
  }
}

provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region = "us-east-1"  # Change this to your AWS region
}

variable "aws_access_key" {}
variable "aws_secret_key" {}
