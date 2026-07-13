variable "security_center_settings" {
  description = <<EOT
Map of security_center_settings, attributes below
Required:
    - enabled
    - setting_name
EOT

  type = map(object({
    enabled      = bool
    setting_name = string
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

