module "resource_group" {
  source = "github.com/terraform-ibm-modules/terraform-ibm-toolkit-resource-group?ref=v3.3.5"

  resource_group_name = var.resource_group_name
  ibmcloud_api_key    = var.ibmcloud_api_key
}
