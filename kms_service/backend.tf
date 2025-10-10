terraform {
    backend "s3" {
        bucket = "kms-remote-terraform-files"
        key = "remote-state/terraform.tfstate"
        region = "us-east-1"
    }
}