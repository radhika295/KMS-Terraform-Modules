variable "directory" {
    type = string 
}

variable "bundle" {
    type = string 
}

variable "name" {
    type = string 
}

variable "root_volume" {
    type = bool
}

variable "user_volume" {
    type = bool
}

variable "user_volume_size" {
    type = number
}

variable "root_volume_size" {
    type = number
}

variable "mode" {
    type = string
}

variable "application_name" {
    type = string
}

variable "environment" {
    type = string
}

variable "compute_type" {
    type = string
}