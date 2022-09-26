terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    aviatrix = {
      source  = "AviatrixSystems/aviatrix"
      version = "2.24.0"
    }
  }
}

provider "aws" {
  region  = var.aws_region
  profile = "vscode"
}