resource "vault_alicloud_secret_backend" "alicloud_secret_backends" {
  for_each = var.alicloud_secret_backends

  access_key            = each.value.access_key
  mount                 = each.value.mount
  secret_key_wo         = each.value.secret_key_wo
  secret_key_wo_version = each.value.secret_key_wo_version
  namespace             = each.value.namespace
}

