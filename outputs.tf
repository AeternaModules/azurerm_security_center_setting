output "security_center_settings_id" {
  description = "Map of id values across all security_center_settings, keyed the same as var.security_center_settings"
  value       = { for k, v in azurerm_security_center_setting.security_center_settings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "security_center_settings_enabled" {
  description = "Map of enabled values across all security_center_settings, keyed the same as var.security_center_settings"
  value       = { for k, v in azurerm_security_center_setting.security_center_settings : k => v.enabled if v.enabled != null }
}
output "security_center_settings_setting_name" {
  description = "Map of setting_name values across all security_center_settings, keyed the same as var.security_center_settings"
  value       = { for k, v in azurerm_security_center_setting.security_center_settings : k => v.setting_name if v.setting_name != null && length(v.setting_name) > 0 }
}

