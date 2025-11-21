variable "record_name" {

    type = string  
    default = "qa"
} 

variable "zone_id" {

    type = string  
    default = "Z07503961RHS7OI25U00O"
}

variable "domain_name" {

    type = string  
    default = "devtraining.icu"
} 


variable "alb_zone_id" {

    type = string  
    default = "Z35SXDOTRQ7X7K"
} 

variable "alb_dns" {

    type = string  
    default = "demo1-2113594118.us-east-1.elb.amazonaws.com"
} 

variable "record_type" {

    type = string  
    default = "A"
}

variable "CNAME_record_value" {

    type = string  
    default = "demo1-2113594118.us-east-1.elb.amazonaws.com"
}



