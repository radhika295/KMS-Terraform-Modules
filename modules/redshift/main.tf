resource "aws_redshift_cluster" "demo" {
  cluster_identifier       = var.cluster_name
  database_name            = var.database_name
  master_username          = var.user_name
  node_type                = var.instance_type
  cluster_type             = var.cluster_type

  manage_master_password   = true
  vpc_security_group_ids   = var.sg
  availability_zone        = var.az
  number_of_nodes          = var.nodes
  skip_final_snapshot      = true
  #cluster_subnet_group_name = var.subnet_group
  iam_roles                =  var.roles
  publicly_accessible      = var.redshift_public_access
  #elastic_ip = aws_eip.redshift_eip[count.index].public_ip
  encrypted                = false
  preferred_maintenance_window = var.maintenance_window
  automated_snapshot_retention_period = var.retention_period
 
}

# resource "aws_eip" "redshift_eip" {
#   count = var.redshift_public_access ? 1 : 0
#   domain = "vpc"
# }

resource "aws_redshift_logging" "redshift_logging" {
  cluster_identifier   = aws_redshift_cluster.demo.id
  log_destination_type = "cloudwatch"
  log_exports          = ["connectionlog", "userlog","useractivitylog"]
}