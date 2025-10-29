module "workspace" {
    source = "../../modules/workspace"
    directory = var.directory
    bundle    = var.bundle
    name = var.name
    root_volume = var.root_volume
    user_volume = var.user_volume
    root_volume_size = var.root_volume_size
    user_volume_size = var.user_volume_size
    mode = var.mode
    application_name = var.application_name
    environment = var.environment
    compute_type = var.compute_type

}