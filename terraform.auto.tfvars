region = "us-east-1"

vpc_cidr = "10.0.0.0/16"

enable_dns_support = "true"

enable_dns_hostnames = "true"

preferred_number_of_public_subnets = 2

preferred_number_of_private_subnets = 4

tags = {
  Enviroment      = "production"
  Owner-Email     = "oayanda@oayanda.com"
  Managed-By      = "Terraform"
  Billing-Account = "1234567890"
}


keypair = "DevOps"

account_no = 737237029972

master-username = "admin"

master-password = 12345678

ami-web = "ami-0ac1f10dfdae12347"

ami-bastion = "ami-0173bdd11fb631d87"

ami-nginx = "ami-09b95f9a58945f573"

environment = "dev"