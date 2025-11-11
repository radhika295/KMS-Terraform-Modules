terraform {
    backend "s3" {
        bucket = "kms-remote-terraform-files"
        key = "remote-state/terraform-redshift.tfstate"
        region = "us-east-1"
        use_lockfile = true
    }
}