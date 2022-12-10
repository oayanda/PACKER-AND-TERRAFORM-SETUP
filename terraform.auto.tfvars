region = "us-east-1"

vpc_cidr = "10.0.0.0/16"

enable_dns_support = "true"

enable_dns_hostnames = "true"

enable_classiclink = "false"

enable_classiclink_dns_support = "false"

preferred_number_of_public_subnets = 2

preferred_number_of_private_subnets = 4

environment = "dev"

ami-web = "ami-01f0d0178693d1048"

ami-bastion = "ami-052bc94eef14a8c8c"

ami-nginx = "ami-005f3d0ac9c85717f"

# ami-sonar = "ami-0f8bd95a744e074b8"

keypair = "instance"

master-password = "devopspblproject"

master-username = "david"

account_no = "737237029972"

tags = {
  Owner-Email     = "infradev-segun@darey.io"
  Managed-By      = "Terraform"
  Billing-Account = "1234567890"
}