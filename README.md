<div align="center">
  <a href="https://github.com/mongodb-devprod-infrastructure/terraform-aws-eks-data-only">
    <img src="https://user-images.githubusercontent.com/2184329/145092072-d669fd86-de77-427e-aa78-7bc14e0bf531.png" width="200">
  </a>
  <h1>terraform-aws-eks-data-only</h1>
  <p>Returns descriptive information about an Amazon EKS cluster</p>
</div>

<!-- BEGIN_TF_DOCS -->

## Requirements

| Name                                                                     | Version  |
| ------------------------------------------------------------------------ | -------- |
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | ~> 1.0   |
| <a name="requirement_aws"></a> [aws](#requirement_aws)                   | >= 3.0.0 |

## Providers

| Name                                             | Version  |
| ------------------------------------------------ | -------- |
| <a name="provider_aws"></a> [aws](#provider_aws) | >= 3.0.0 |

## Modules

No modules.

## Resources

| Name                                                                                                                       | Type        |
| -------------------------------------------------------------------------------------------------------------------------- | ----------- |
| [aws_caller_identity.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_eks_cluster.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster)         | data source |

## Inputs

| Name                                                                  | Description             | Type     | Default | Required |
| --------------------------------------------------------------------- | ----------------------- | -------- | ------- | :------: |
| <a name="input_cluster_name"></a> [cluster_name](#input_cluster_name) | The name of the cluster | `string` | n/a     |   yes    |

## Outputs

| Name                                                                                                                             | Description                                                       |
| -------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------- |
| <a name="output_arn"></a> [arn](#output_arn)                                                                                     | The Amazon Resource Name (ARN) of the cluster                     |
| <a name="output_certificate_authority"></a> [certificate_authority](#output_certificate_authority)                               | The certificate-authority-data for your cluster                   |
| <a name="output_endpoint"></a> [endpoint](#output_endpoint)                                                                      | The endpoint for your Kubernetes API server                       |
| <a name="output_name"></a> [name](#output_name)                                                                                  | The name of the cluster                                           |
| <a name="output_open_id_connect_provider_arn"></a> [open_id_connect_provider_arn](#output_open_id_connect_provider_arn)          | The Amazon Resource Name (ARN) of the IAM OpenID Connect provider |
| <a name="output_open_id_connect_provider_issuer"></a> [open_id_connect_provider_issuer](#output_open_id_connect_provider_issuer) | The issuer for OIDC Provider                                      |
| <a name="output_subnet_ids"></a> [subnet_ids](#output_subnet_ids)                                                                | The subnets associated with your cluster                          |
| <a name="output_vpc_id"></a> [vpc_id](#output_vpc_id)                                                                            | The VPC associated with your cluster                              |

<!-- END_TF_DOCS -->

## Contributing

Please refer to the [CONTRIBUTING](docs/CONTRIBUTING.md) document for more information.

## License

[apache-2.0](LICENSE)
