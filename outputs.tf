output "iot_security_solutions_id" {
  description = "Map of id values across all iot_security_solutions, keyed the same as var.iot_security_solutions"
  value       = { for k, v in azurerm_iot_security_solution.iot_security_solutions : k => v.id }
}
output "iot_security_solutions_additional_workspace" {
  description = "Map of additional_workspace values across all iot_security_solutions, keyed the same as var.iot_security_solutions"
  value       = { for k, v in azurerm_iot_security_solution.iot_security_solutions : k => v.additional_workspace }
}
output "iot_security_solutions_disabled_data_sources" {
  description = "Map of disabled_data_sources values across all iot_security_solutions, keyed the same as var.iot_security_solutions"
  value       = { for k, v in azurerm_iot_security_solution.iot_security_solutions : k => v.disabled_data_sources }
}
output "iot_security_solutions_display_name" {
  description = "Map of display_name values across all iot_security_solutions, keyed the same as var.iot_security_solutions"
  value       = { for k, v in azurerm_iot_security_solution.iot_security_solutions : k => v.display_name }
}
output "iot_security_solutions_enabled" {
  description = "Map of enabled values across all iot_security_solutions, keyed the same as var.iot_security_solutions"
  value       = { for k, v in azurerm_iot_security_solution.iot_security_solutions : k => v.enabled }
}
output "iot_security_solutions_events_to_export" {
  description = "Map of events_to_export values across all iot_security_solutions, keyed the same as var.iot_security_solutions"
  value       = { for k, v in azurerm_iot_security_solution.iot_security_solutions : k => v.events_to_export }
}
output "iot_security_solutions_iothub_ids" {
  description = "Map of iothub_ids values across all iot_security_solutions, keyed the same as var.iot_security_solutions"
  value       = { for k, v in azurerm_iot_security_solution.iot_security_solutions : k => v.iothub_ids }
}
output "iot_security_solutions_location" {
  description = "Map of location values across all iot_security_solutions, keyed the same as var.iot_security_solutions"
  value       = { for k, v in azurerm_iot_security_solution.iot_security_solutions : k => v.location }
}
output "iot_security_solutions_log_analytics_workspace_id" {
  description = "Map of log_analytics_workspace_id values across all iot_security_solutions, keyed the same as var.iot_security_solutions"
  value       = { for k, v in azurerm_iot_security_solution.iot_security_solutions : k => v.log_analytics_workspace_id }
}
output "iot_security_solutions_log_unmasked_ips_enabled" {
  description = "Map of log_unmasked_ips_enabled values across all iot_security_solutions, keyed the same as var.iot_security_solutions"
  value       = { for k, v in azurerm_iot_security_solution.iot_security_solutions : k => v.log_unmasked_ips_enabled }
}
output "iot_security_solutions_name" {
  description = "Map of name values across all iot_security_solutions, keyed the same as var.iot_security_solutions"
  value       = { for k, v in azurerm_iot_security_solution.iot_security_solutions : k => v.name }
}
output "iot_security_solutions_query_for_resources" {
  description = "Map of query_for_resources values across all iot_security_solutions, keyed the same as var.iot_security_solutions"
  value       = { for k, v in azurerm_iot_security_solution.iot_security_solutions : k => v.query_for_resources }
}
output "iot_security_solutions_query_subscription_ids" {
  description = "Map of query_subscription_ids values across all iot_security_solutions, keyed the same as var.iot_security_solutions"
  value       = { for k, v in azurerm_iot_security_solution.iot_security_solutions : k => v.query_subscription_ids }
}
output "iot_security_solutions_recommendations_enabled" {
  description = "Map of recommendations_enabled values across all iot_security_solutions, keyed the same as var.iot_security_solutions"
  value       = { for k, v in azurerm_iot_security_solution.iot_security_solutions : k => v.recommendations_enabled }
}
output "iot_security_solutions_resource_group_name" {
  description = "Map of resource_group_name values across all iot_security_solutions, keyed the same as var.iot_security_solutions"
  value       = { for k, v in azurerm_iot_security_solution.iot_security_solutions : k => v.resource_group_name }
}
output "iot_security_solutions_tags" {
  description = "Map of tags values across all iot_security_solutions, keyed the same as var.iot_security_solutions"
  value       = { for k, v in azurerm_iot_security_solution.iot_security_solutions : k => v.tags }
}

