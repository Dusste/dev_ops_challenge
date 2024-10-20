resource "google_container_cluster" "primary" {
  name     = "goldbach-cluster"
  location = "us-central1"
}

resource "kubernetes_deployment" "goldbach" {
  metadata {
    name = "goldbach-app"
  }
  spec {
    replicas = 2
    selector {
      match_labels = {
        app = "goldbach-app"
      }
    }
    template {
      metadata {
        labels = {
          app = "goldbach-app"
        }
      }
      spec {
        container {
          image = "dstevanovic1986/goldbach-app:latest"
          name  = "goldbach-app"
        }
      }
    }
  }
}
