variable "kms_description" {
  description = "Description of the KMS key"
  type        = string
  #default     = "Terraform-managed KMS key"
}

variable "enable_key_rotation" {
  description = "enable automatic key rotation"
  type        = bool
  #default     = true
}

variable "deletion_window_in_days" {
  description = "Waiting period for KMS key deletion (in days)"
  type        = number
  #default     = 1
}

variable "kms_alias_name" {
  description = "Alias name for the KMS key (without alias/ prefix)"
  type        = string
  #default     = "my-key"
}

variable "rotation_period_in_days" {
  type = number 
}


variable "multi_region" {
  type = bool
}
variable "aws_region" {}
variable "aws_access_key" {}
variable "aws_secret_key" {}