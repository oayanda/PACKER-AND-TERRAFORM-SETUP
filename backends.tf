# terraform {
#   cloud {
#     organization = "oayanda-terraform"

#     workspaces {
#       name = "PBL"
#     }
#   }
# }


# terraform {
#   backend "s3" {
#     bucket         = "pbl18-dev"
#     key            = "global/s3/terraform.tfstate"
#     region         = "us-west-2"
#     dynamodb_table = "terraform-locks"
#     encrypt        = true
#   }
# }

terraform {
  backend "remote" {
    organization = "oayanda-pbl-19"

    workspaces {
      name = "Packer-ami-pbl-19"
    }
  }
}
