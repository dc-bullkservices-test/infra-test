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
 region     = var.AWS_REGION
}

variable "AWS_REGION" {
   type = string
}

variable "AWS_ACCESS_KEY_ID" {
   type = string
}

variable "AWS_SECRET_ACCESS_KEY" {
   type = string
}
