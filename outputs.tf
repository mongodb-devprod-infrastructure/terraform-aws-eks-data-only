output "arn" {
  description = "The Amazon Resource Name (ARN) of the cluster"
  value       = data.aws_eks_cluster.this.arn
}

output "certificate_authority" {
  description = "The certificate-authority-data for your cluster"
  value       = base64decode(data.aws_eks_cluster.this.certificate_authority[0].data)
}

output "endpoint" {
  description = "The endpoint for your Kubernetes API server"
  value       = data.aws_eks_cluster.this.endpoint
}

output "name" {
  description = "The name of the cluster"
  value       = data.aws_eks_cluster.this.name
}

output "open_id_connect_provider_arn" {
  description = "The Amazon Resource Name (ARN) of the IAM OpenID Connect provider"

  value = format(
    "arn:aws:iam::%s:oidc-provider/%s",
    data.aws_caller_identity.this.account_id,
    replace(local.open_id_connect_provider_issuer, "https://", "")
  )
}

output "open_id_connect_provider_issuer" {
  description = "The issuer for OIDC Provider"
  value       = local.open_id_connect_provider_issuer
}

output "subnet_ids" {
  description = "The subnets associated with your cluster"
  value       = data.aws_eks_cluster.this.vpc_config[0].subnet_ids
}

output "vpc_id" {
  description = "The VPC associated with your cluster"
  value       = data.aws_eks_cluster.this.vpc_config[0].vpc_id
}
