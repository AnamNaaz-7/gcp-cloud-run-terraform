variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "Region for Cloud Run"
  type        = string
  default     = "asia-south1"
}

variable "service_name" {
  description = "Cloud Run service name"
  type        = string
  default     = "my-cloud-run-service"
}

variable "image" {
  description = "Container image"
  type        = string
  default     = "us-docker.pkg.dev/cloudrun/container/hello"
}
