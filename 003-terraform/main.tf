terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

# Create the GCS Bucket
resource "google_storage_bucket" "nexus_bucket" {
  name          = var.nexus_bucket_name
  location      = var.region
  force_destroy = true

  uniform_bucket_level_access = true
}

# Create the GKE cluster
resource "google_container_cluster" "primary" {
  name     = "${var.cluster_name}-cluster"
  location = var.region

  remove_default_node_pool = true
  initial_node_count       = 1
  network                  = "default"
  subnetwork              = "default"
}

# Create the node pool with preemptible nodes
resource "google_container_node_pool" "primary_preemptible_nodes" {
  name       = "${google_container_cluster.primary.name}-node-pool"
  location   = var.region
  cluster    = google_container_cluster.primary.name
  node_count = 1

  node_config {
    preemptible  = true
    machine_type = "n1-standard-1"

    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
    tags = ["gke-node", "${var.project_id}-gke"]
  }
}