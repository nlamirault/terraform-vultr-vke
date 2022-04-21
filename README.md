# Terraform module for Vultr VKE

## Documentation

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_vultr"></a> [vultr](#requirement\_vultr) | 2.8.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vultr"></a> [vultr](#provider\_vultr) | 2.8.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [vultr_kubernetes.this](https://registry.terraform.io/providers/vultr/vultr/2.8.1/docs/resources/kubernetes) | resource |
| [vultr_kubernetes_node_pools.this](https://registry.terraform.io/providers/vultr/vultr/2.8.1/docs/resources/kubernetes_node_pools) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_node_plan"></a> [node\_plan](#input\_node\_plan) | The plan to be used in this node pool | `string` | `"vc2-1c-2gb"` | no |
| <a name="input_node_pools"></a> [node\_pools](#input\_node\_pools) | Addons node pools | <pre>list(object({<br>    node_count = number<br>    plan       = string<br>    label      = string<br>    tag        = string<br>  }))</pre> | `[]` | no |
| <a name="input_node_quantity"></a> [node\_quantity](#input\_node\_quantity) | The number of nodes in this node pool. | `number` | `3` | no |
| <a name="input_region"></a> [region](#input\_region) | The region your VKE cluster will be deployed in. Currently, supported values are ewr and lax | `string` | `"lax"` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
