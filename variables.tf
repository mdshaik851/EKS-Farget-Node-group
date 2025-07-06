variable "region" {
    description = "Region"
    type = string
    default = "ap-northeast-3"

}

variable "vpc_cidr" {
    description = "VPC cidr range"
    type = string
    default = "10.0.0.0/16"
}

variable "public_subnet" {
    description = "public subnets descriptions"
    type = list(string)
    default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet" {
    description = "private subnets descriptions"
    type = list(string)
    default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "availability_zone" {
    description = "Availability Zones"
    type = list(string)
    default     = ["ap-northeast-3a", "ap-northeast-3b"]
}
