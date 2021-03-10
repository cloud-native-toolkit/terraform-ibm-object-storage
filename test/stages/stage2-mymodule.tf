module "dev_tools_mymodule" {
  source = "./module"

  provision = true
  resource_group_name = var.resource_group_name
}
