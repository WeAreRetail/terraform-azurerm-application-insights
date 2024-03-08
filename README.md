# Azure Application Insights

Common Azure terraform module to create an Application Insights component.
## Naming
Resource naming is based on the Microsoft CAF naming convention best practices. Custom naming is available by setting the parameter `custom_name`. We rely on the official Terraform Azure CAF naming provider to generate resource names when available.

## Location
The resource location is the parent resource group location. To specify a custom location, use the `custom_location` parameter.

## Tags
Tags are inherited from parent resource group. To add resource specific tags, use the `custom_tags`
## Usage
```hcl
module "weareretail_application_insights" {
  source = "WeAreRetail/application-insights/azurerm"

  instance_index                      = 1
  resource_group_name                 = module.resource_group.name
  description                         = "Test application insights"
  log_analytics_workspace_resource_id = module.log_analytics.id
  caf_prefixes                        = module.naming.resource_prefixes
}

```
<!-- BEGIN_TF_DOCS -->
#### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_azurecaf"></a> [azurecaf](#requirement\_azurecaf) | >= 1.2.16 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=3.0.2 |

#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_instance_index"></a> [instance\_index](#input\_instance\_index) | Resource type index on the resource group. | `number` | n/a | yes |
| <a name="input_log_analytics_workspace_resource_id"></a> [log\_analytics\_workspace\_resource\_id](#input\_log\_analytics\_workspace\_resource\_id) | Specifies the id of a log analytics workspace resource. | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Specifies the parent resource group name. | `string` | n/a | yes |
| <a name="input_caf_prefixes"></a> [caf\_prefixes](#input\_caf\_prefixes) | Prefixes to use for caf naming. | `list(string)` | `[]` | no |
| <a name="input_custom_location"></a> [custom\_location](#input\_custom\_location) | Specifies a custom location for the resource. | `string` | `""` | no |
| <a name="input_custom_name"></a> [custom\_name](#input\_custom\_name) | Specifies a custom name for the resource. | `string` | `""` | no |
| <a name="input_custom_tags"></a> [custom\_tags](#input\_custom\_tags) | The custom tags to add on the resource. | `map(string)` | `{}` | no |
| <a name="input_daily_data_cap_in_gb"></a> [daily\_data\_cap\_in\_gb](#input\_daily\_data\_cap\_in\_gb) | Daily data volume cap in GB. | `number` | `1` | no |
| <a name="input_daily_data_cap_notifications_disabled"></a> [daily\_data\_cap\_notifications\_disabled](#input\_daily\_data\_cap\_notifications\_disabled) | Whether to disable cap notifications to the subscription admin. | `bool` | `true` | no |
| <a name="input_description"></a> [description](#input\_description) | The resource description. | `string` | `""` | no |
| <a name="input_name_separator"></a> [name\_separator](#input\_name\_separator) | Name separator | `string` | `"-"` | no |
| <a name="input_sampling_percentage"></a> [sampling\_percentage](#input\_sampling\_percentage) | Specifies the percentage of the data produced by the monitored application that is sampled for Application Insights telemetry. | `number` | `100` | no |

#### Outputs

| Name | Description |
|------|-------------|
| <a name="output_app_id"></a> [app\_id](#output\_app\_id) | The App ID associated with this Application Insights component. |
| <a name="output_connection_string"></a> [connection\_string](#output\_connection\_string) | The Connection String for this Application Insights component. (Sensitive) |
| <a name="output_id"></a> [id](#output\_id) | The ID of the Application Insights component. |
| <a name="output_instrumentation_key"></a> [instrumentation\_key](#output\_instrumentation\_key) | The Instrumentation Key for this Application Insights component. (Sensitive) |
| <a name="output_name"></a> [name](#output\_name) | The name of the Application Insights component. |
<!-- END_TF_DOCS -->
## Related documentation

Terraform Azure application_insights documentation: [https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights)

Terraform Azure CAF Naming documentation: [https://registry.terraform.io/providers/aztfmod/azurecaf/latest/docs/resources/azurecaf_name](https://registry.terraform.io/providers/aztfmod/azurecaf/latest/docs/resources/azurecaf_name)