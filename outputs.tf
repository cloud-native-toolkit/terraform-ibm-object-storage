output "name" {
  description = "The Object Storage instance name"
  value       = local.name
  depends_on  = [ibm_resource_instance.cos_instance]
}

output "location" {
  description = "The Object Storage instance location"
  value       = var.resource_location
  depends_on  = [ibm_resource_instance.cos_instance]
}

output "key_name" {
  description = "The name of the credential provisioned for the Object Storage instance"
  value       = local.key_name
  depends_on  = [ibm_resource_key.cos_credentials]
}
