variable "alb_name" {

    type = string
    
}

variable "listener_port" {
    type = number
   
}

variable "internal_lb" {

    type = bool  
    
   
}
variable "sg_ids" {

    type = list
   
   
}

variable "subnet_ids" {

    type = list 
    
} 

variable "certificate_arn" {

    type = string
    
    
}

variable "target_group_arn" {

    type = string
    
    
}

variable "header" {

    type = string
    
}

variable "domain_name" {

    type = string
   
}

variable "zone_id" {
    type = string
   
}

# variable "environment" {
#     type = string
    
# }