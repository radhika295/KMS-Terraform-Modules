resource "aws_lb" "main_alb" {
  name               = var.alb_name  
  internal           = var.internal_lb
  load_balancer_type = "application"
  security_groups    = var.sg_ids
  subnets            = var.subnet_ids

  enable_deletion_protection = false

  
}

resource "aws_lb_listener" "main_alb" {
  load_balancer_arn = aws_lb.main_alb.arn
  count = var.listener_port ==  80 ? 1 : 0 
  port              = var.listener_port
  protocol          = "HTTP"


  default_action {
    type = "fixed-response"

    fixed_response {
      content_type = "text/html"
      message_body = "<h1>Hi, I am from ALB</h1>"
      status_code  = "200"
    }
  }
}

resource "aws_lb_listener" "main_alb_https" {
  load_balancer_arn = aws_lb.main_alb.arn
  count = var.listener_port ==  8080 ? 1 : 0 
  port              = var.listener_port
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-TLS13-1-3-2021-06"
  certificate_arn   = var.certificate_arn

  default_action {
    type = "fixed-response"

    fixed_response {
      content_type = "text/html"
      message_body = "<h1>Hi, I am from ALB</h1>"
      status_code  = "200"
    }
  }
}


# output "listener" {
#     value = aws_lb_listener.main_alb_https[0].arn
# }

locals {
  listener_arn = var.listener_port == 80 ? aws_lb_listener.main_alb[0].arn : aws_lb_listener.main_alb_https[0].arn
}

resource "aws_lb_listener_rule" "main" {
  
  listener_arn = local.listener_arn
  priority     = 10

  action {
    type             = "forward"
    target_group_arn = var.target_group_arn
  }

  condition {
    host_header {
      values = ["${var.header}.${var.domain_name}"]
    }
  }
}

resource "aws_route53_record" "backend_alb" {
  zone_id = var.zone_id
  name    = "*.${var.domain_name}"
  type    = "A"
  allow_overwrite = true

  alias {
    # These are ALB details, not our domain details
    name                   = aws_lb.main_alb.dns_name
    zone_id                = aws_lb.main_alb.zone_id
    evaluate_target_health = true
  }
}

