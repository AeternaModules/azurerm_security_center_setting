output "security_center_settings" {
  description = "All security_center_setting resources"
  value       = azurerm_security_center_setting.security_center_settings
}
output "security_center_settings_enabled" {
  description = "List of enabled values across all security_center_settings"
  value       = [for k, v in azurerm_security_center_setting.security_center_settings : v.enabled]
}
output "security_center_settings_setting_name" {
  description = "List of setting_name values across all security_center_settings"
  value       = [for k, v in azurerm_security_center_setting.security_center_settings : v.setting_name]
}

