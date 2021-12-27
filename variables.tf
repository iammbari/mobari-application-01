
variable "name"                     {}

variable "env"                      {}

variable "ou"                       {}
variable "project"                  {default = "MoJ-AWS-NOC"}
variable "vpc_cidr_block"           {}

variable "public_rt_name"           {default = null}
variable "private_rt_name"          {default = null}
variable "primary_subnet_name"      {default = null}
variable "primary_subnet_cidr"      {default = []}
variable "secondary_subnet_name"    {default = null}
variable "secondary_subnet_cidr"    {default = []}
variable "tertiary_subnet_name"     {default = null}
variable "tertiary_subnet_cidr"     {default = []}


variable "sg_name" {
  description = "The project namespace to use for unique resource naming"
  default     = "LL-TEST"
  type        = string
}

variable "region" {
  description = "AWS region"
  default     = "eu-west-2"
  type        = string
}

variable "ami_id"                   {}

variable "instance_type"            {}
variable "disable_api_termination"  {
  type = bool
  }
variable "key_name"                 {default = null}

variable "ec2_name"                 {default = null}