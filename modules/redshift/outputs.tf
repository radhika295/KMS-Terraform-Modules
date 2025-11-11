output "cluster_arn" {
    value =  aws_redshift_cluster.demo.arn
}

output "cluster_id" {
    value =  aws_redshift_cluster.demo.id
}

output "cluster_port" {
    value =  aws_redshift_cluster.demo.port
}

output "endpoint" {
    value = aws_redshift_cluster.demo.endpoint
}

