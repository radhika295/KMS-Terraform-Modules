variable "kms_description" {
  description = "Description of the KMS key"
  type        = string
}

variable "enable_key_rotation" {
  description = "enable automatic key rotation"
  type        = bool
}

variable "deletion_window_in_days" {
  description = "Waiting period for KMS key deletion (in days)"
  type        = number
}

variable "kms_alias_name" {
  description = "Alias name for the KMS key (without alias/ prefix)"
  type        = string
}

variable "rotation_period_in_days" {
    description = "key will rotate automatically after these days"
    type = number
}

variable "kms_policy_path" {
  description = "Path to the KMS key policy JSON file"
  type        = string
}
