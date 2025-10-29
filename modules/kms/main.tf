<<<<<<< HEAD

data "aws_caller_identity" "current" {}  # provide data of the current running account


# this block prints the account id of data block
output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

resource "aws_kms_key" "kms_demo" {
  description             = var.kms_description
  enable_key_rotation     = var.enable_key_rotation
  deletion_window_in_days = var.deletion_window_in_days
  rotation_period_in_days = var.rotation_period_in_days

  policy = file(var.kms_policy_path)  # we will get path from the root 
}

resource "aws_kms_alias" "kms_name_alias" {
  name          = "alias/${var.kms_alias_name}"
  target_key_id = aws_kms_key.kms_demo.key_id
}

output "alias_name" {
  value = aws_kms_alias.kms_name_alias.name

}
=======

data "aws_caller_identity" "current" {}  # provide data of the current running account


# this block prints the account id of data block
output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

resource "aws_kms_key" "kms_demo" {
  description             = var.kms_description
  enable_key_rotation     = var.enable_key_rotation
  deletion_window_in_days = var.deletion_window_in_days
  rotation_period_in_days = var.rotation_period_in_days

  policy = file(var.kms_policy_path)
  multi_region            = var.multi_region
}

resource "aws_kms_alias" "kms_name_alias" {
  name          = "alias/${var.kms_alias_name}"
  target_key_id = aws_kms_key.kms_demo.key_id
}

output "alias_name" {
  value = aws_kms_alias.kms_name_alias.name
}
>>>>>>> 2f29f76 (workspaces)
