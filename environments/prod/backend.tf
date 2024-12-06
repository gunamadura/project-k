terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.80.0"
        }
    }
}

terraform {
  cloud {
    hostname = "app.terraform.io"
    organization = "initvalue-aws"
    workspaces {
      name = "aws-cspm-guna-prod"
    }
  }
}