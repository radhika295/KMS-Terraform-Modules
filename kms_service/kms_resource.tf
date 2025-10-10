module "kms" {
    source = "../modules/kms"
    kms_description         = var.kms_description
    enable_key_rotation     = var.enable_key_rotation
    deletion_window_in_days = var.deletion_window_in_days
    kms_alias_name          = var.kms_alias_name
    rotation_period_in_days = var.rotation_period_in_days
    kms_policy_path         = "${path.root}/kms-policy.json"
}