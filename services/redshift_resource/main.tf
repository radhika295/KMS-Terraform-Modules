module redshift {
    source = "../../modules/redshift"
    cluster_name  = var.cluster_name
    database_name = var.database_name
    user_name     = var.user_name
    instance_type = var.instance_type
    cluster_type  = var.cluster_type
    sg            = var.sg
    az            = var.az
    nodes         =  var.nodes
    subnet_group = var.subnet_group
    roles = var.roles
    redshift_public_access = var.redshift_public_access
    maintenance_window = var.maintenance_window
    retention_period = var.retention_period
}