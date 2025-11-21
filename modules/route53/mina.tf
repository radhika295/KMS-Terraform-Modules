resource "aws_route53_record" "demo" {
  zone_id = var.zone_id
  name    = "${var.record_name}.${var.domain_name}" 
  type = var.record_type
  allow_overwrite = true
  ttl = var.record_type  == "CNAME" ? 300 : null   #if record type is CNAME then TTL is applied 
  records  = var.record_type == "CNAME" ? [var.CNAME_record_value] : null  # create a CNAME record 

 dynamic "alias" {
    for_each = var.record_type == "A" ? [1] : []  # if record type is A and it will create alias record 
    content {
      name                   = var.alb_dns
      zone_id                = var.alb_zone_id
      evaluate_target_health = true
    }
  }
}