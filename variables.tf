variable "alicloud_secret_backends" {
  description = <<EOT
Map of alicloud_secret_backends, attributes below
Required:
    - access_key
    - mount
    - secret_key_wo
    - secret_key_wo_version
Optional:
    - namespace
EOT

  type = map(object({
    access_key            = string
    mount                 = string
    secret_key_wo         = string
    secret_key_wo_version = number
    namespace             = optional(string)
  }))
}

