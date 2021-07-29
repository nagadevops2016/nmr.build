resource "kubernetes_pod" "foo_app" {
  metadata {
    name = "foo-app"

    labels = {
      app = "foo"
    }
  }

  spec {
    container {
      name  = "foo-app"
      image = "hashicorp/http-echo:0.2.3"
      args  = ["-text=foo"]
    }
  }
}

resource "kubernetes_service" "foo_service" {
  metadata {
    name = "foo-service"
  }

  spec {
    port {
      port = 5678
    }

    selector = {
      app = "foo"
    }
  }
}

resource "kubernetes_pod" "test_app" {
  metadata {
    name = "test-app"

    labels = {
      app = "test"
    }
  }

  spec {
    container {
      name  = "test-app"
      image = "msoap/ascii-art"
    }
  }
}

resource "kubernetes_service" "test_service" {
  metadata {
    name = "test-service"
  }

  spec {
    port {
      port = 8080
    }

    selector = {
      app = "test"
    }
  }
}

resource "kubernetes_pod" "bar_app" {
  metadata {
    name = "bar-app"

    labels = {
      app = "bar"
    }
  }

  spec {
    container {
      name  = "bar-app"
      image = "hashicorp/http-echo:0.2.3"
      args  = ["-text=bar"]
    }
  }
}

resource "kubernetes_service" "bar_service" {
  metadata {
    name = "bar-service"
  }

  spec {
    port {
      port = 5678
    }

    selector = {
      app = "bar"
    }
  }
}

resource "kubernetes_ingress" "app_ingress" {
  metadata {
    name = "app-ingress"
  }

  spec {
    rule {
      http {
        path {
          path = "/foo"

          backend {
            service_name = "foo-service"
            service_port = "5678"
          }
        }

        path {
          path = "/test"

          backend {
            service_name = "test-service"
            service_port = "80"
          }
        }

        path {
          path = "/bar"

          backend {
            service_name = "bar-service"
            service_port = "5678"
          }
        }
      }
    }
  }
  depends_on = [module.ingress]
}
