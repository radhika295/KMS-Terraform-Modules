module alb {

    source =  "../../modules/ALB"
    alb_name = var.alb_name
    listener_port = var.listener_port
    internal_lb = var.internal_lb
    sg_ids = var.sg_ids
    subnet_ids = var.subnet_ids
    certificate_arn = var.certificate_arn
    target_group_arn = var.target_group_arn
    header = var.header
    domain_name = var.domain_name
    zone_id = var.zone_id
}