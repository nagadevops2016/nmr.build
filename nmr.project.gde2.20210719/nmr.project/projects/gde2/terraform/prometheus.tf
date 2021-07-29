locals {
  prom_vars = {}
}

resource "helm_release" "prometheus-stack" {
  count            = var.enable_prometheus_stack == true ? 1 : 0
  name             = "prometheus"
  namespace        = "monitoring"
  create_namespace = true
  repository       = "https://prometheus-community.github.io/helm-charts"
  chart            = "kube-prometheus-stack"
  version          = "16.7.0"
  timeout          = 900
  values           = [templatefile("${path.module}/templates/prometheus/values.yaml", local.prom_vars)]

  depends_on = [module.ingress]
}
