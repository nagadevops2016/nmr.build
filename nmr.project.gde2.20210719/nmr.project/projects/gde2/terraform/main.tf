provider "helm" {
  kubernetes {
    config_path = "../../../nmr-local-kind"
  }
}

provider "kubernetes" {
  config_path = "../../../nmr-local-kind"
}
