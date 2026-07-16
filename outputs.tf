output "iot_security_solutions_id" {
  description = "Map of id values across all iot_security_solutions, keyed the same as var.iot_security_solutions"
  value       = { for k, v in azurerm_iot_security_solution.iot_security_solutions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iot_security_solutions_additional_workspace" {
  description = "Map of additional_workspace values across all iot_security_solutions, keyed the same as var.iot_security_solutions"
  value       = { for k, v in azurerm_iot_security_solution.iot_security_solutions : k => v.additional_workspace if v.additional_workspace != null && length(v.additional_workspace) > 0 }
}
output "iot_security_solutions_disabled_data_sources" {
  description = "Map of disabled_data_sources values across all iot_security_solutions, keyed the same as var.iot_security_solutions"
  value       = { for k, v in azurerm_iot_security_solution.iot_security_solutions : k => v.disabled_data_sources if v.disabled_data_sources != null && length(v.disabled_data_sources) > 0 }
}
output "iot_security_solutions_display_name" {
  description = "Map of display_name values across all iot_security_solutions, keyed the same as var.iot_security_solutions"
  value       = { for k, v in azurerm_iot_security_solution.iot_security_solutions : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "iot_security_solutions_enabled" {
  description = "Map of enabled values across all iot_security_solutions, keyed the same as var.iot_security_solutions"
  value       = { for k, v in azurerm_iot_security_solution.iot_security_solutions : k => v.enabled if v.enabled != null }
}
output "iot_security_solutions_events_to_export" {
  description = "Map of events_to_export values across all iot_security_solutions, keyed the same as var.iot_security_solutions"
  value       = { for k, v in azurerm_iot_security_solution.iot_security_solutions : k => v.events_to_export if v.events_to_export != null && length(v.events_to_export) > 0 }
}
output "iot_security_solutions_iothub_ids" {
  description = "Map of iothub_ids values across all iot_security_solutions, keyed the same as var.iot_security_solutions"
  value       = { for k, v in azurerm_iot_security_solution.iot_security_solutions : k => v.iothub_ids if v.iothub_ids != null && length(v.iothub_ids) > 0 }
}
output "iot_security_solutions_location" {
  description = "Map of location values across all iot_security_solutions, keyed the same as var.iot_security_solutions"
  value       = { for k, v in azurerm_iot_security_solution.iot_security_solutions : k => v.location if v.location != null && length(v.location) > 0 }
}
output "iot_security_solutions_log_analytics_workspace_id" {
  description = "Map of log_analytics_workspace_id values across all iot_security_solutions, keyed the same as var.iot_security_solutions"
  value       = { for k, v in azurerm_iot_security_solution.iot_security_solutions : k => v.log_analytics_workspace_id if v.log_analytics_workspace_id != null && length(v.log_analytics_workspace_id) > 0 }
}
output "iot_security_solutions_log_unmasked_ips_enabled" {
  description = "Map of log_unmasked_ips_enabled values across all iot_security_solutions, keyed the same as var.iot_security_solutions"
  value       = { for k, v in azurerm_iot_security_solution.iot_security_solutions : k => v.log_unmasked_ips_enabled if v.log_unmasked_ips_enabled != null }
}
output "iot_security_solutions_name" {
  description = "Map of name values across all iot_security_solutions, keyed the same as var.iot_security_solutions"
  value       = { for k, v in azurerm_iot_security_solution.iot_security_solutions : k => v.name if v.name != null && length(v.name) > 0 }
}
output "iot_security_solutions_query_for_resources" {
  description = "Map of query_for_resources values across all iot_security_solutions, keyed the same as var.iot_security_solutions"
  value       = { for k, v in azurerm_iot_security_solution.iot_security_solutions : k => v.query_for_resources if v.query_for_resources != null && length(v.query_for_resources) > 0 }
}
output "iot_security_solutions_query_subscription_ids" {
  description = "Map of query_subscription_ids values across all iot_security_solutions, keyed the same as var.iot_security_solutions"
  value       = { for k, v in azurerm_iot_security_solution.iot_security_solutions : k => v.query_subscription_ids if v.query_subscription_ids != null && length(v.query_subscription_ids) > 0 }
}
output "iot_security_solutions_recommendations_enabled" {
  description = "Map of recommendations_enabled values across all iot_security_solutions, keyed the same as var.iot_security_solutions"
  value       = { for k, v in azurerm_iot_security_solution.iot_security_solutions : k => v.recommendations_enabled if v.recommendations_enabled != null && length(v.recommendations_enabled) > 0 }
}
output "iot_security_solutions_resource_group_name" {
  description = "Map of resource_group_name values across all iot_security_solutions, keyed the same as var.iot_security_solutions"
  value       = { for k, v in azurerm_iot_security_solution.iot_security_solutions : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "iot_security_solutions_tags" {
  description = "Map of tags values across all iot_security_solutions, keyed the same as var.iot_security_solutions"
  value       = { for k, v in azurerm_iot_security_solution.iot_security_solutions : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

