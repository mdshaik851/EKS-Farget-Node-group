# Create Namespace for grafana and prometheus
resource "kubernetes_namespace" "monitoring" {
  metadata {
    name = "monitoring"
  }
}

# Resource: Kubernetes Namespace fargate_namespace
resource "kubernetes_namespace" "fargate_namespace" {
  metadata {
    name = "frontend"
  }
}