# Terraform Kubernetes Module for Google Cloud

This module creates a kubernetes cluster in google cloud

## Using the module

```terraform
provider "google" {
  project     = "your-project-name"
}

module "cluster" {
    source = "github.com/david157/tf-k8s-gcp/src"
}

```

### Optional Parameters

`region` region to recreate the cluster

`cluster_name` cluster name

`worker_machine_type` size of the machine.  
Check out [Google Cloud Machine Types](https://cloud.google.com/compute/docs/machine-types)

`worker_machine_count`

### Custom configuration

```terraform
provider "google" {
  project     = "your-project-name"
}

module "cluster" {
    source = "github.com/david157/tf-k8s-gcp/src"
    region = "us-central1-b"
    cluster_name = "test-cluster-1"
    worker_machine_type = "n1-standard-8"
    worker_machine_count = "5"

}

```