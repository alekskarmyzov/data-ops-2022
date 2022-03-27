variable "owner" {
  type = string
  default = "akarmyzov"
}

variable "environment" {
  type = string
  default = "dataops"
}

variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
}

variable "azs" {
  type = list
  default = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
}

variable "public_cidrs" {
  type = list
  default = ["10.0.0.0/24", "10.0.2.0/24", "10.0.4.0/24"]
}

variable "private_cidrs" {
  type = list
  default = ["10.0.1.0/24", "10.0.3.0/24", "10.0.5.0/24"]
}

variable "ssh_key_name" {
  type = string
  default = "akarmyzov-euc1"
}

variable "zone_id" {
  type = string
  default = "Z05974502KISPIQK1IOY"
}