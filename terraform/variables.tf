variable "instance_type" {
  type    = string
  default = "t4g.medium"
}

variable "name" {
  type    = string
  default = "k8-workstation"
}

variable "key_name" {
  type    = string
  default = "work_mac"
}

variable "az" {
  type    = string
  default = "us-east-1a"
}

variable "region" {
  type    = string
  default = "us-east-1"
}
