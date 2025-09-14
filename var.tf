variable "project_id" {
  description = "The GCP project ID"
  type        = string
  default     = "strange-passage-470705-j1"
}

variable "region" {
  description = "The GCP region"
  type        = string
  default     = "us-central1"
}

variable "credentials_file" {
  description = "Path to the GCP service account JSON key"
  type        = string
  default     = "service.json"
}

variable "bucket_name" {
  description = "The name of the GCS bucket"
  default = "bhagyashreebucket"
  type        = string
}
