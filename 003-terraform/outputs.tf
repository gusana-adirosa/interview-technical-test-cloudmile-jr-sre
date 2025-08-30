output "cluster_name" {
  description = "The name of the created GKE cluster"
  value       = google_container_cluster.primary.name
}

output "bucket_name" {
  description = "The name of the created GCS bucket"
  value       = google_storage_bucket.nexus_bucket.name
}