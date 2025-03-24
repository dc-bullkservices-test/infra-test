variable "correo_electronico" {
  description = "Email address for the new AWS account"
  type        = string
}

variable "nombre_cuenta" {
  description = "Name of the new AWS account"
  type        = string
}

variable "rol" {
  description = "IAM role name to assign in the new AWS account"
  type        = string
}
