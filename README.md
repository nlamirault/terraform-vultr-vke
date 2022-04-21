# Terraform module for Vultr VKE

## Documentation

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_vultr"></a> [vultr](#requirement\_vultr) | >= 2.8 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vultr"></a> [vultr](#provider\_vultr) | >= 2.8 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [vultr_firewall_group.this](https://registry.terraform.io/providers/vultr/vultr/latest/docs/resources/firewall_group) | resource |
| [vultr_kubernetes.this](https://registry.terraform.io/providers/vultr/vultr/latest/docs/resources/kubernetes) | resource |
| [vultr_kubernetes_node_pools.this](https://registry.terraform.io/providers/vultr/vultr/latest/docs/resources/kubernetes_node_pools) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | The cluster name | `string` | n/a | yes |
| <a name="input_kubernetes_version"></a> [kubernetes\_version](#input\_kubernetes\_version) | Kubernetes version | `string` | n/a | yes |
| <a name="input_node_label"></a> [node\_label](#input\_node\_label) | The node label | `string` | n/a | yes |
| <a name="input_node_plan"></a> [node\_plan](#input\_node\_plan) | The plan to be used in this node pool | `string` | `"vc2-1c-2gb"` | no |
| <a name="input_node_pools"></a> [node\_pools](#input\_node\_pools) | Addons node pools | <pre>list(object({<br>    quantity = number<br>    plan     = string<br>    label    = string<br>    tag      = string<br>  }))</pre> | `[]` | no |
| <a name="input_node_quantity"></a> [node\_quantity](#input\_node\_quantity) | The number of nodes in this node pool. | `number` | `3` | no |
| <a name="input_region"></a> [region](#input\_region) | The region your VKE cluster will be deployed in. Currently, supported values are ewr and lax | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vke_id"></a> [vke\_id](#output\_vke\_id) | The VKE cluster ID |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
