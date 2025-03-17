terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.35.0"
    }
  }
}

provider "aws" {
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
  region = "us-east-1"  # Change this to your AWS region
}

variable "AWS_ACCESS_KEY_ID" {}
variable "AWS_SECRET_ACCESS_KEY" {}
