output alb_arn {
    value = aws_lb.main_alb.arn
}

output alb_dns {
    value = aws_lb.main_alb.dns_name
}

output alb_id {
    value = aws_lb.main_alb.id
}

output zone_id {
    value = aws_lb.main_alb.zone_id
}


