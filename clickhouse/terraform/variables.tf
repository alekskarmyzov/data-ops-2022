variable "prefix" {
  type = string
}

variable "region" {
  type = string
}

variable "az_list" {
  type = list(string)
}

variable "vpc_cidr" {
   type = string
}

variable "public_cidr_list" {
  type = list(string)
}

variable "instance_ami" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "ssh_key_name" {
  type = string
}

variable "route53_zone_id" {
  type = string
}

variable "domain" {
  type = string
}

variable "instances_count" {
  type = string
}