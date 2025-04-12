# Agones is deployed on GKE. This Model expands the GKE Module
# Install Agones on the cluster
# This only configures the GKE cluster

# Below Will use GKE Module
Module "agones_gke"{
    source = "../gke-cluster"
    project_id = var.project_id
    zone = var.zone
    environment = var.environment
    network = var.network
    subnetwork = var.subnetwork
}

output "agones_cluster_name" {
    value = module.agones_gke.gke_cluster_name
}

