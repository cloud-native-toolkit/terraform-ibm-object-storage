# tflint-ignore: terraform_naming_convention
module "dev_object-storage" {
  source = "./module"

  provision           = true
  resource_group_name = module.resource_group.name
  name_prefix         = var.name_prefix
  ibmcloud_api_key    = var.ibmcloud_api_key
  common_tags         = ["common", "test"]
  tags                = ["test"]
}
