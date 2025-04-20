variable "project_name" {
  
}

variable "environment" {
  
}


variable "vpc_cidr" {
   
  
}
 variable "enable_dns_hostnames" {
    default = "true"
   
 }

 variable "common_tags" {
    default = {}
   
   
 }
 variable "vpc_tags" {
    default = {}
}
 variable "igw_tags" { 
   default = {}
   
 }

 variable "public_subnet_cidr" {
   type = list
   validation {
      condition     = length(var.public_subnet_cidr) == 2
      error_message = "please provide valide subnets ids"
  }
 }
 variable "public_subnet_tags" {
   default = {}
   
 }

 variable "private_subnet_cidr" {
   type = list
   validation {
      condition     = length(var.private_subnet_cidr) == 2
      error_message = "please provide valide subnets ids"
  }
 }

 variable "private_subnet_tags" {
   default = {}
   
 }

 variable "database_subnet_cidr" {
   type = list
   validation {
      condition     = length(var.database_subnet_cidr) == 2
      error_message = "please provide valide subnets ids"
  }
 }

 variable "database_subnet_tags" {
   default = {}
   
 }

 variable "nat_gatway_tags" {
  default = {}
   
 }

 variable "public_route_table_tags" {
  default = {}
   
 }

 variable "private_route_table_tags" {
  default = {}
   
 }

 variable "database_route_table_tags" {
  default = {}
   
 }
variable "is_peering_required" {
  default = false
  
}
 
 
 variable "vpc_peering_tags" {
   default = {}
 }

 variable "db_subnet_group_tags" {
  default = {}
}