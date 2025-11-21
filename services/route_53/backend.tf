terraform {
    backend "s3" {
        bucket = "kms-remote-terraform-files"
        key = "remote-state/terraform-route53.tfstate"
        region = "us-east-1"
        use_lockfile = true
    }
}