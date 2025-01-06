resource "kubernetes_pod" "hello_world" {
  metadata {
    name = "hello-world"
    labels = {
      app = "hello-world"
    }
  }

  spec {
    container {
      name  = "hello-world"
      image = "nginx:latest"

      # Correctly define the ports block
      port {
        name          = "http"
        container_port = 80
        protocol      = "TCP"
      }
    }

    # Restart policy for the pod
    restart_policy = "Always"
  }
}
