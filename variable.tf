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