/*--------------- VPC ---------------*/
variable "create_vpc" {
  type    = bool
  default = true
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "vpc_enable_dns_support" {
  type    = bool
  default = true
}

variable "vpc_enable_dns_hostnames" {
  type    = bool
  default = true
}

variable "vpc_name" {
  type    = string
  default = "dev-vpc-01"
}

variable "vpc_tags" {
  type    = map(string)
  default = {
    Name = "dev-vpc"
    Enviroment = "dev"
    Owner = "harshit"
  }
}

/*--------------- Public Subnets ---------------*/

variable "public_subnets_cidr" {
  description = "public subnet cidr block"
  type        = list(string)
  default     = ["10.0.0.32/27", "10.0.0.64/27"]

}

variable "public_subnets_azs" {
  description = "public subnet availability zones"
  type        = list(string)
  default     = ["us-east-2a", "us-east-2b"]
}
variable "enable_map_public_ip_on_launch" {
  type    = bool
  default = true
}

variable "public_subnets_tags" {
  description = "public subnet tags"
  type        = list(map(string))
  default = [{
    Name = "dev-public-subnet-01"
    Enviroment = "dev"
    Owner = "harshit"
    }, {
    Name = "dev-public-subnet-02"
    Enviroment = "dev"
    Owner = "harshit"
  }]
}
