resource "aws_organizations_account" "account" {
  name  = "Damian Cabrera II"
  email = "dcabrera+aws@bullkservices.uy"
  parent_id = "o-415qlnm3mq"

  tags = {
	Environment = "External"
	ManagedBy = "Terraform"
}
}
