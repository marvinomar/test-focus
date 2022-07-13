provider "kubernetes" {
	config_path = "kubeconfig.yaml"
}
resource "kubernetes_namespace" "test-focus-namespace"{
	metadata {
		name = "test-focus-namespace"
	}
}
