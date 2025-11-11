variable "cluster_name" {
    type = string
    description = "provide cluster name for the identification"
}

variable "database_name" {
    type = string
    description = "provide database name for identification"
}

variable "user_name" {
    type = string
    description = "provide user name for the redishift cluster"
}

variable "instance_type" {
    type = string
    description = "provide node type for the nodes"
}

variable "cluster_type" {
    type = string
    description = "provide cluster type either Either single-node or multi-node."
}

variable "sg" {
    type = list
    description = "provide a list of Virtual Private Cloud (VPC) security groups to be associated with the cluster."
}

variable "az" {
    type = string
    description = "The EC2 Availability Zone (AZ) in which you want Amazon Redshift to provision the cluster."
}

variable "nodes" {
    type = number
    description = "The number of compute nodes in the cluster."
}

# variable "subnet_group" {
#     type = string
#     description = "The name of a cluster subnet group to be associated with this cluster"
# }

variable "roles" {
    type = list
    description = "A list of IAM Role ARNs to associate with the cluster. "
}

variable "redshift_public_access" {
    type = bool
    description = " If true, the cluster can be accessed from a public network"
}


variable "maintenance_window" {
    type = string
    description = "The weekly time range (in UTC) during which automated cluster maintenance can occur"
}

variable "retention_period" {
    type = number
    description = " The number of days that automated snapshots are retained"
}

