alb_name = "demo1"
listener_port =80
internal_lb = false
sg_ids = ["sg-045897fa6d8ffd258"]
subnet_ids = ["subnet-0dc0167d280315796", "subnet-0ffb4e9ceba7e18a7"]
certificate_arn = "arn:aws:acm:us-east-1:347539192046:certificate/d9a8ffd3-b7c7-4bf5-a371-8a06cca8bb0d" 
target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:347539192046:targetgroup/demo/648929b37dde9084"
header = "catalogue"
domain_name = "devtraining.icu"
zone_id = "Z07503961RHS7OI25U00O"


