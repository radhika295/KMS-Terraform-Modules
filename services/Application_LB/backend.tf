terraform {
    backend "s3" {
        bucket = "kms-remote-terraform-files"
        key = "remote-state/terraform-applicaton_lb.tfstate"
        region = "us-east-1"
        use_lockfile = true
    }
}