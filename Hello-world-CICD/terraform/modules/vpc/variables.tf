variable "environment" {}

variable "vpc_net_block" {}

variable "public_subnet_cidrs" {
  type = "list"

  default = [
    ".0.0/20",
    ".16.0/20",
    ".32.0/20",
  ]
}

variable "private_subnet_cidrs" {
  type = "list"

  default = [
    ".48.0/20",
    ".64.0/20",
    ".80.0/20",
  ]
}

variable "nat_subnet_number" {
  default = "0"
}

# Used for VPC peering (I used here one default VPC where I launched my jenkins instance to ssh into app instance)
#these values changes based on from what VPC you want to execute and SSH into instances
variable "default_vpc_cidrs" {
  default = "172.31.0.0/16"
}

variable "default_vpc_id" {
  default = "vpc-0494908d3852cf549"
}

variable "defaultRouteTables" {
  default = "rtb-09e039eaa585d291d"
}
