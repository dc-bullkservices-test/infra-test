terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.35.0"
    }
  }
}

provider "aws" {
 access_key = var.access_key
 secret_key = var.secret_key
 region     = var.region
}

variable "region" {
   type = string
}

variable "access_key" {
   type = string
}

variable "secret_key" {
   type = string
}
