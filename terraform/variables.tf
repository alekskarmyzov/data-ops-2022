variable "owner" {
  type = string
  default = "akarmyzov"
}

variable "owner_id" {
  type = string
  default = "043751989667"
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
  # default = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
  default = ["eu-central-1a"]
}

variable "public_cidrs" {
  type = list
  # default = ["10.0.0.0/24", "10.0.2.0/24", "10.0.4.0/24"]
  default = ["10.0.0.0/24"]
}

# variable "private_cidrs" {
#   type = list
#   default = ["10.0.1.0/24", "10.0.3.0/24", "10.0.5.0/24"]
# }

variable "ssh_key_name" {
  type = string
  default = "akarmyzov-euc1"
}

variable "ami_id" {
  type = string
  default = "ami-0d527b8c289b4af7f"
}

variable "zone_id" {
  type = string
  default = "Z05974502KISPIQK1IOY"
}