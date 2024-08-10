variable "project_name" {
  type = string
}

variable "environemnt" {
  type = string
  default = "dev"
  
}
variable "common_tags" {
  type = map
  
}
variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
    type = bool
    default = true
}

variable "vpc_tags" {
  type = map
  default = {}
}

variable "igw_tags" {
  type = map
  default = {}
  
}
#creating 2 pulic subnets each in two zones(us-east-1a and us_east-1b)
variable "public_subnet_cidrs" {
  type = list
  validation {
    condition = length(var.public_subnet_cidrs) == 2
    error_message = "Please provide 2 valid public subnet cidrs"
  }
} 

 variable "public_subnet_cidrs_tags" {
  type = map
  default = {}
}

#creating 2 private subnets each in two zones(us-east-1a and us_east-1b)
variable "private_subnet_cidrs" {
  type = list
  validation {
    condition = length(var.private_subnet_cidrs) == 2
    error_message = "Please provide 2 valid private subnet cidrs"
  }
} 

 variable "private_subnet_cidrs_tags" {
  type = map
  default = {}
}

#creating 2 database subnets each in two zones(us-east-1a and us_east-1b)
variable "database_subnet_cidrs" {
  type = list
  validation {
    condition = length(var.database_subnet_cidrs) == 2
    error_message = "Please provide 2 valid database subnet cidrs"
  }
} 

 variable "database_subnet_cidrs_tags" {
  type = map
  default = {}
}

#nat gateway tags
variable "nat_gateway_tags" {
  type = map
  default = {}
}

#creating route table tags

variable "public_route_table_tags" {
  type = map
  default = {}
}

variable "private_route_table_tags" {
  type = map
  default = {}
}

variable "database_route_table_tags" {
  type = map
  default = {}
}

#pering variable
variable "is_peering_required" {
  type = bool
  default = false
}

variable "target_vpc_id" {
  type = string
  default = ""
}