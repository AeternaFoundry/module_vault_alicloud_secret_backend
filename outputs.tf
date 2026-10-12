output "alicloud_secret_backends_access_key" {
  description = "Map of access_key values across all alicloud_secret_backends, keyed the same as var.alicloud_secret_backends except keys with no access_key are omitted"
  value       = { for k, v in vault_alicloud_secret_backend.alicloud_secret_backends : k => v.access_key if v.access_key != null && length(v.access_key) > 0 }
  sensitive   = true
}
output "alicloud_secret_backends_mount" {
  description = "Map of mount values across all alicloud_secret_backends, keyed the same as var.alicloud_secret_backends except keys with no mount are omitted"
  value       = { for k, v in vault_alicloud_secret_backend.alicloud_secret_backends : k => v.mount if v.mount != null && length(v.mount) > 0 }
}
output "alicloud_secret_backends_namespace" {
  description = "Map of namespace values across all alicloud_secret_backends, keyed the same as var.alicloud_secret_backends except keys with no namespace are omitted"
  value       = { for k, v in vault_alicloud_secret_backend.alicloud_secret_backends : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "alicloud_secret_backends_secret_key_wo_version" {
  description = "Map of secret_key_wo_version values across all alicloud_secret_backends, keyed the same as var.alicloud_secret_backends except keys with no secret_key_wo_version are omitted"
  value       = { for k, v in vault_alicloud_secret_backend.alicloud_secret_backends : k => v.secret_key_wo_version if v.secret_key_wo_version != null }
}

