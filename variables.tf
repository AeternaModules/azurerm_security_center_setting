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
  # --- Unconfirmed validation candidates, derived from azurerm_security_center_setting's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: setting_name
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
}

