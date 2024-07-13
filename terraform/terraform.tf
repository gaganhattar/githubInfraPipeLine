terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.25.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.5.1"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.4"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.3.2"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.23.0"
    }
  }

  backend "s3" {
    bucket = "github-tf-state-bkt"
    key    = "state/terraform.tfstate"
    region = "us-west-1" //should be us-east-2 as all other infra is, just using this time for testing
    access_key = "value"
  }

  # required_version = "~> 1.6.3"
}
##
##
##
