variable "project_id" {
  description = "The GCP Project ID"
  type        = string
}

variable "region" {
  description = "The GCP region to deploy resources into"
  type        = string
  default     = "asia-southeast1"
}

variable "cluster_name" {
  description = "The name for the GKE cluster"
  type        = string
  default     = "nexus"
}

variable "nexus_bucket_name" {
  description = "The name for the GCS bucket (must be globally unique)"
  type        = string
}