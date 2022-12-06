output "instance_id" {
  value       = module.cos_example.id
  description = "COS Instance ID"
}

output "instance_crn" {
  value       = module.cos_example.crn
  description = "COS Instance CRN"
}
