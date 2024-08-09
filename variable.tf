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