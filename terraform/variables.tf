
# digitalocean personal token, passed in as env var
variable "digitalocean_token" {}

# kubernetes version
variable k8s_version_prefix { default ="1.22.11-do.0" }

# name and region for k8s cluster
variable cluster_name { default="test-focus-cluster" }
variable digitalocean_region { default="nyc1" }

#node pool variables
variable node_name {default="test-focus-node"}
variable node_size {default="s-1vcpu-2gb"}
variable node_count {default=1}

# default private network for k8s cluster
#variable do_vpc_cidr { default="10.10.10.0/24" }
