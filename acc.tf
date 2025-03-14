resource "aws_organizations_account" "child_account" {
  name  = "${var.account_name}"
  email = "${var.user_email}"
  #Optional, placing the account in a specific OU
  parent_id = "${var.parent_id}"

  tags = {
    managedby = "terraform"
  }
}
