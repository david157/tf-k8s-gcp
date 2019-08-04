#
#   Variables
#

variable "region" {
    default     = "us-central1-b"
    type        = "string"
    description = "google region to create the cluster"
}

variable "cluster_name" {
    default     = "cluster"
    type        = "string"
    description = "cluster name"
}

variable "worker_machine_type" {
    default     = "n1-standard-1"
    type        = "string"
    description = "machine size for worker nodes"
}

variable "worker_machine_count" {
    default     = 3
    type        = number
    description = "amount of worker nodes"
}

#
#   Outputs
#

# The following outputs allow authentication and connectivity to the GKE Cluster
# by using certificate-based authentication.
output "client_certificate" {
  value = "${google_container_cluster.primary.master_auth.0.client_certificate}"
}

output "client_key" {
  value = "${google_container_cluster.primary.master_auth.0.client_key}"
}

output "cluster_ca_certificate" {
  value = "${google_container_cluster.primary.master_auth.0.cluster_ca_certificate}"
}


