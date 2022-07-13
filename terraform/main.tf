# lookup exact version of k8s available
data "digitalocean_kubernetes_versions" "test-focus" {
  version_prefix = var.k8s_version_prefix
}

resource "digitalocean_kubernetes_cluster" "test-focus-cluster" {
  name   = var.cluster_name
  region = var.digitalocean_region
  # Grab the latest version slug from `doctl kubernetes options versions`
  version = data.digitalocean_kubernetes_versions.test-focus.version_prefix

  node_pool {
    name       = var.node_name
    size       = var.node_size
    node_count = var.node_count

  }
}
