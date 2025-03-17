// This is a template file for a basic deployment.
// Modify the parameters below with actual values

module "aws-iam-identity-center" {
  source = "aws-ia/iam-identity-center/aws"


  // Create desired GROUPS in IAM Identity Center
  sso_groups = {
    Tecnología-Seguridad : {
      group_name        = "Tecnología-Seguridad"
      group_description = "Security IAM Identity Center Group"
      tags              = { ManagedBy = "Terraform" }
    },
  }

  // Create desired USERS in IAM Identity Center
  sso_users = {
    dcabrera : {
      group_membership = ["Tecnología-Seguridad"]
      user_name        = "dcabrera"
      given_name       = "Damián"
      family_name      = "Cabrera"
      email            = "dcabrera@aludrey.com"
      tags             = { ManagedBy = "Terraform" }
    },
  }

  // Create permissions sets backed by AWS managed policies
  permission_sets = {
    AdministratorAccess = {
      description          = "Provides AWS full access permissions.",
      session_duration     = "PT4H", // how long until session expires - this means 4 hours. max is 12 hours
      aws_managed_policies = ["arn:aws:iam::aws:policy/AdministratorAccess"]
      tags                 = { ManagedBy = "Terraform" }
    },
  }

  # // Assign users/groups access to accounts with the specified permissions
  # account_assignments = {
  #   Admin : {
  #     principal_name  = "Admin"                                   # name of the user or group you wish to have access to the account(s)
  #     principal_type  = "GROUP"                                   # principal type (user or group) you wish to have access to the account(s)
  #     principal_idp   = "EXTERNAL"                                # type of Identity Provider you are using. Valid values are "INTERNAL" (using Identity Store) or "EXTERNAL" (using external IdP such as EntraID, Okta, Google, etc.)
  #     permission_sets = ["AdministratorAccess"] # permissions the user/group will have in the account(s)
  #     account_ids = [                                             # account(s) the group will have access to. Permissions they will have in account are above line
  #     "111111111111", // replace with your desired account id
  #     "222222222222", // replace with your desired account id
  #     ]
  #   },
  }
