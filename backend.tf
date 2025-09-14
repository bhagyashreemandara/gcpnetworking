terraform {
  backend "gcs" {
    bucket  = var.bucket_name
    region  = var.region
  }
}
