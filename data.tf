data "aws_availability_zones" "zones" {
    state = "available"
}

data "aws_vpc" "default" {
    default = true
}