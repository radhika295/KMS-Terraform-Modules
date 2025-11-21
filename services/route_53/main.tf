module route53 {
    source = "../../modules/route53"
    record_name = var.record_name
    zone_id = var.zone_id
    domain_name = var.domain_name
    alb_zone_id =var.alb_zone_id
    alb_dns = var.alb_dns
    record_type =var.record_type
    CNAME_record_value = var.CNAME_record_value
}