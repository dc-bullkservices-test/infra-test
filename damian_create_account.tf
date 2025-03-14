resource "aws_organizations_account" "account" {
  name  = "Damian Cabrera"
  email = "dcabrera+aws@bullkservices.uy"
  parent_id = "536738705384"

  tags = {
	Environment = "External"
	ManagedBy = "Terraform"
}
}
