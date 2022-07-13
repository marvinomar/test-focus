terraform {
  required_version = ">= 0.14"
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}
#Configure the DigitalOcean Provider
provider "digitalocean" {
	token = var.digitalocean_token
}
