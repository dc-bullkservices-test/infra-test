provider "aws" {
  region = "us-east-2" # Change if needed
}

resource "aws_organizations_account" "new_account" {
  name      = var.nombre_cuenta
  email     = var.correo_electronico
  role_name = var.rol
  close_on_deletion = true

  lifecycle {
    create_before_destroy = true
  }
}
