<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_container_registry.contenairregistry](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_registry) | resource |
| [azurerm_role_assignment.acr_contributor_role](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.acr_pull_role](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | Localisation | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Nom du Container Registry | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Nom du Resource Group | `string` | n/a | yes |
| <a name="input_sku"></a> [sku](#input\_sku) | SKU du Container Registry | `string` | n/a | yes |
| <a name="input_user_assigned_identity_id"></a> [user\_assigned\_identity\_id](#input\_user\_assigned\_identity\_id) | ID de l'UAI | `string` | n/a | yes |
| <a name="input_user_assigned_identity_principal"></a> [user\_assigned\_identity\_principal](#input\_user\_assigned\_identity\_principal) | Principal ID de l'UAI | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Map de tags | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_acr_id"></a> [acr\_id](#output\_acr\_id) | ID du Container Registry |
<!-- END_TF_DOCS -->