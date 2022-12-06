
module "cos_example" {
  source              = "../../"
  resource_group_name = var.resource_group
  name_prefix         = var.prefix
  name                = "${var.prefix}-cos-complete"
  resource_location   = var.cos_location
  ibmcloud_api_key    = var.ibmcloud_api_key
  common_tags         = var.resource_tags
}
