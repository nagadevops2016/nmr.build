locals {
  redis_vars = {
    hard_anti_affinity = false
    replica_count      = 1
  }
}

resource "helm_release" "redis-ha-stack" {
  name             = "redis-ha"
  namespace        = "default"
  create_namespace = true
  repository       = "https://dandydeveloper.github.io/charts/"
  chart            = "redis-ha"
  version          = "4.12.14"

  values = [templatefile("${path.module}/templates/redis/values.yaml", local.redis_vars)]
}
