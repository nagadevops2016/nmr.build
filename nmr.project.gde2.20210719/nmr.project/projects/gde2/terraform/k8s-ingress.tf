module "ingress" {
  count  = var.enable_ingress == true ? 1 : 0
  source = "./k8s-ingress/"
  type   = var.ingress_type
}
