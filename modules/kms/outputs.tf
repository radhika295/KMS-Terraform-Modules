
output "key_arn" {
    description = "The ARN of the key"
    value = aws_kms_key.kms_demo.arn
}

output "key_id" {
    description = "The ARN of the key"
    value = aws_kms_key.kms_demo.id
}