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
  default     = "bhagyashreebucket"
  type        = string
}

variable "vpc_name" {
  description = "The name of the VPC network"
  type        = string
  default     = "my-vpc"
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
  default     = "my-subnet"
}

variable "subnet_ip" {
  description = "The IP CIDR range of the subnet"
  type        = string
  default     = "10.0.1.0/24"
}
