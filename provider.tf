terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
provider "google" {
  project     = var.project_id
  region      = var.region
  credentials = file(var.credentials_file)
}
