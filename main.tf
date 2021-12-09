locals {
  open_id_connect_provider_issuer = data.aws_eks_cluster.this.identity[0].oidc[0].issuer
}

data "aws_caller_identity" "this" {}

data "aws_eks_cluster" "this" {
  name = var.cluster_name
}
