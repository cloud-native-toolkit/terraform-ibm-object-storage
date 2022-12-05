# IBM Object Storage terraform module

Module to work with an IBM Cloud Object Storage instance. If the `provision` flag is true then an new instance of IBM Cloud Object Storage is provisioned. Otherwise, the module will find an existing instance with the provided name and create a credential. The name and id of the Object Storage instance as well as the name and id of the credential instance are exported from the module for use by other modules.

**Note:** This module follows the Terraform conventions regarding how provider configuration is defined within the Terraform template and passed into the module - https://www.terraform.io/docs/language/modules/develop/providers.html. The default provider configuration flows through to the module. If different configuration is required for a module, it can be explicitly passed in the `providers` block of the module - https://www.terraform.io/docs/language/modules/develop/providers.html#passing-providers-explicitly.


## Usage

```hcl-terraform
terraform {
  required_providers {
    ibm = {
      source = "ibm-cloud/ibm"
    }
  }
  required_version = ">= 0.15"
}

provider "ibm" {
  ibmcloud_api_key = var.ibmcloud_api_key
  region = var.region
}

module "cos" {
  source = "github.com/cloud-native-toolkit/terraform-ibm-object-storage.git"

  resource_group_name = var.resource_group_name
  name_prefix         = var.name_prefix
  provision           = var.cos_provision
  resource_location   = var.cos_resource_location
  common_tags         = ["common", "test"]
  tags                = ["test"]
}
```
<!-- BEGIN EXAMPLES HOOK -->
## Examples

- [Examples](examples)
<!-- END EXAMPLES HOOK -->
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.15.0 |
| <a name="requirement_external"></a> [external](#requirement\_external) | >=2.2.3 |
| <a name="requirement_ibm"></a> [ibm](#requirement\_ibm) | >= 1.18.0 |
| <a name="requirement_null"></a> [null](#requirement\_null) | >=3.2.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_clis"></a> [clis](#module\_clis) | cloud-native-toolkit/clis/util | 1.16.4 |

## Resources

| Name | Type |
|------|------|
| [ibm_resource_instance.cos_instance](https://registry.terraform.io/providers/ibm-cloud/ibm/latest/docs/resources/resource_instance) | resource |
| [ibm_resource_key.cos_credentials](https://registry.terraform.io/providers/ibm-cloud/ibm/latest/docs/resources/resource_key) | resource |
| [null_resource.print_names](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [external_external.instance](https://registry.terraform.io/providers/hashicorp/external/latest/docs/data-sources/external) | data source |
| [ibm_resource_group.resource_group](https://registry.terraform.io/providers/ibm-cloud/ibm/latest/docs/data-sources/resource_group) | data source |
| [ibm_resource_instance.cos_instance](https://registry.terraform.io/providers/ibm-cloud/ibm/latest/docs/data-sources/resource_instance) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_common_tags"></a> [common\_tags](#input\_common\_tags) | Common tags that should be added to the instance | `list(string)` | `[]` | no |
| <a name="input_ibmcloud_api_key"></a> [ibmcloud\_api\_key](#input\_ibmcloud\_api\_key) | The ibmcloud api key used to test that instance is ready | `string` | `""` | no |
| <a name="input_label"></a> [label](#input\_label) | The name that should be used for the service, particularly when connecting to an existing service. If not provided then the name will be defaulted to {name prefix}-{service} | `string` | `"cos"` | no |
| <a name="input_name"></a> [name](#input\_name) | The name that should be used for the service, particularly when connecting to an existing service. If not provided then the name will be defaulted to {name prefix}-{service} | `string` | `""` | no |
| <a name="input_name_prefix"></a> [name\_prefix](#input\_name\_prefix) | The prefix name for the service. If not provided it will default to the resource group name | `string` | `""` | no |
| <a name="input_plan"></a> [plan](#input\_plan) | The type of plan the service instance should run under (lite or standard) | `string` | `"standard"` | no |
| <a name="input_provision"></a> [provision](#input\_provision) | Flag indicating that cos instance should be provisioned | `bool` | `true` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Resource group where the cluster has been provisioned. | `string` | n/a | yes |
| <a name="input_resource_location"></a> [resource\_location](#input\_resource\_location) | Geographic location of the resource (e.g. us-south, us-east) | `string` | `"global"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags that should be applied to the service | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_crn"></a> [crn](#output\_crn) | The crn of the Object Storage instance |
| <a name="output_id"></a> [id](#output\_id) | The Object Storage instance id |
| <a name="output_key_id"></a> [key\_id](#output\_key\_id) | The name of the credential provisioned for the Object Storage instance |
| <a name="output_key_name"></a> [key\_name](#output\_key\_name) | The name of the credential provisioned for the Object Storage instance |
| <a name="output_label"></a> [label](#output\_label) | The label used for the Object Storage instance |
| <a name="output_location"></a> [location](#output\_location) | The Object Storage instance location |
| <a name="output_name"></a> [name](#output\_name) | The Object Storage instance name |
| <a name="output_service"></a> [service](#output\_service) | The name of the key provisioned for the Object Storage instance |
| <a name="output_type"></a> [type](#output\_type) | The type of the resource |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
<!-- BEGIN CONTRIBUTING HOOK -->

<!-- Leave this section as is so that your module has a link to local development environment set up steps for contributors to follow -->
## Contributing

You can report issues and request features for this module in GitHub issues in the module repo. See [Report an issue or request a feature](https://github.com/terraform-ibm-modules/.github/blob/main/.github/SUPPORT.md).

To set up your local development environment, see [Local development setup](https://terraform-ibm-modules.github.io/documentation/#/local-dev-setup) in the project documentation.
<!-- Source for this readme file: https://github.com/terraform-ibm-modules/common-dev-assets/tree/main/module-assets/ci/module-template-automation -->
<!-- END CONTRIBUTING HOOK -->
