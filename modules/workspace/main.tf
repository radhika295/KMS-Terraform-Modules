
data "aws_kms_key" "workspaces" {
  key_id = "alias/aws/workspaces"
}

locals {
 
 common_tags = {
    Application = var.application_name
    Environment = var.environment
    Terraform = true
  }
}


resource "aws_workspaces_workspace" "main" {
  directory_id = var.directory
  bundle_id    = var.bundle
  user_name    = var.name

  root_volume_encryption_enabled = var.root_volume
  user_volume_encryption_enabled = var.user_volume
  volume_encryption_key          = var.root_volume ? data.aws_kms_key.workspaces.arn : null

  workspace_properties {
    compute_type_name                         = var.compute_type
    user_volume_size_gib                      = var.user_volume_size
    root_volume_size_gib                      = var.root_volume_size
    running_mode                              = var.mode
    running_mode_auto_stop_timeout_in_minutes = 60
  }

  tags = merge(

    local.common_tags,
    {
        GBDT-Owner = Arjit-Sinha
    }
  )
}