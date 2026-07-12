output "security_center_settings_enabled" {
  description = "Map of enabled values across all security_center_settings, keyed the same as var.security_center_settings"
  value       = { for k, v in azurerm_security_center_setting.security_center_settings : k => v.enabled }
}
output "security_center_settings_setting_name" {
  description = "Map of setting_name values across all security_center_settings, keyed the same as var.security_center_settings"
  value       = { for k, v in azurerm_security_center_setting.security_center_settings : k => v.setting_name }
}

