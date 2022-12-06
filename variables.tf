variable "region" {
  default = "us-east-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "enable_dns_support" {
  default = "true"
}

variable "enable_dns_hostnames" {
  default = "true"
}

variable "preferred_number_of_public_subnets" {
  # default = number
  description = "Number of public subnets"
}
variable "preferred_number_of_private_subnets" {
  # default = number
  description = "Number of private subnets"
}

variable "name" {
  type    = string
  default = "oayanda"

}

variable "tags" {
  description = "A mapping of tags to assign to all resources."
  type        = map(string)
  default     = {}
}

variable "ami-web" {
  type        = string
  description = "AMI for lunch template"

}

variable "ami-bastion" {
  type        = string
  description = "AMI for lunch template"

}


variable "ami-nginx" {
  type        = string
  description = "AMI for lunch template"

}
variable "keypair" {
  type = string

}

variable "environment" {
  type        = string
  description = "Enviroment"
}

variable "account_no" {
  type        = number
  description = "the account number"
}


variable "master-username" {
  type        = string
  description = "RDS admin username"
}

variable "master-password" {
  type        = string
  description = "RDS master password"
}
