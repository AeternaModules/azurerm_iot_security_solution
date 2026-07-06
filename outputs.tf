output "iot_security_solutions" {
  description = "All iot_security_solution resources"
  value       = azurerm_iot_security_solution.iot_security_solutions
}
output "iot_security_solutions_additional_workspace" {
  description = "List of additional_workspace values across all iot_security_solutions"
  value       = [for k, v in azurerm_iot_security_solution.iot_security_solutions : v.additional_workspace]
}
output "iot_security_solutions_disabled_data_sources" {
  description = "List of disabled_data_sources values across all iot_security_solutions"
  value       = [for k, v in azurerm_iot_security_solution.iot_security_solutions : v.disabled_data_sources]
}
output "iot_security_solutions_display_name" {
  description = "List of display_name values across all iot_security_solutions"
  value       = [for k, v in azurerm_iot_security_solution.iot_security_solutions : v.display_name]
}
output "iot_security_solutions_enabled" {
  description = "List of enabled values across all iot_security_solutions"
  value       = [for k, v in azurerm_iot_security_solution.iot_security_solutions : v.enabled]
}
output "iot_security_solutions_events_to_export" {
  description = "List of events_to_export values across all iot_security_solutions"
  value       = [for k, v in azurerm_iot_security_solution.iot_security_solutions : v.events_to_export]
}
output "iot_security_solutions_iothub_ids" {
  description = "List of iothub_ids values across all iot_security_solutions"
  value       = [for k, v in azurerm_iot_security_solution.iot_security_solutions : v.iothub_ids]
}
output "iot_security_solutions_location" {
  description = "List of location values across all iot_security_solutions"
  value       = [for k, v in azurerm_iot_security_solution.iot_security_solutions : v.location]
}
output "iot_security_solutions_log_analytics_workspace_id" {
  description = "List of log_analytics_workspace_id values across all iot_security_solutions"
  value       = [for k, v in azurerm_iot_security_solution.iot_security_solutions : v.log_analytics_workspace_id]
}
output "iot_security_solutions_log_unmasked_ips_enabled" {
  description = "List of log_unmasked_ips_enabled values across all iot_security_solutions"
  value       = [for k, v in azurerm_iot_security_solution.iot_security_solutions : v.log_unmasked_ips_enabled]
}
output "iot_security_solutions_name" {
  description = "List of name values across all iot_security_solutions"
  value       = [for k, v in azurerm_iot_security_solution.iot_security_solutions : v.name]
}
output "iot_security_solutions_query_for_resources" {
  description = "List of query_for_resources values across all iot_security_solutions"
  value       = [for k, v in azurerm_iot_security_solution.iot_security_solutions : v.query_for_resources]
}
output "iot_security_solutions_query_subscription_ids" {
  description = "List of query_subscription_ids values across all iot_security_solutions"
  value       = [for k, v in azurerm_iot_security_solution.iot_security_solutions : v.query_subscription_ids]
}
output "iot_security_solutions_recommendations_enabled" {
  description = "List of recommendations_enabled values across all iot_security_solutions"
  value       = [for k, v in azurerm_iot_security_solution.iot_security_solutions : v.recommendations_enabled]
}
output "iot_security_solutions_resource_group_name" {
  description = "List of resource_group_name values across all iot_security_solutions"
  value       = [for k, v in azurerm_iot_security_solution.iot_security_solutions : v.resource_group_name]
}
output "iot_security_solutions_tags" {
  description = "List of tags values across all iot_security_solutions"
  value       = [for k, v in azurerm_iot_security_solution.iot_security_solutions : v.tags]
}

