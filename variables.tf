variable "iot_security_solutions" {
  description = <<EOT
Map of iot_security_solutions, attributes below
Required:
    - display_name
    - iothub_ids
    - location
    - name
    - resource_group_name
Optional:
    - disabled_data_sources
    - enabled
    - events_to_export
    - log_analytics_workspace_id
    - log_unmasked_ips_enabled
    - query_for_resources
    - query_subscription_ids
    - tags
    - additional_workspace (block):
        - data_types (required)
        - workspace_id (required)
    - recommendations (block):
        - acr_authentication (optional)
        - agent_send_unutilized_msg (optional)
        - baseline (optional)
        - edge_hub_mem_optimize (optional)
        - edge_logging_option (optional)
        - inconsistent_module_settings (optional)
        - install_agent (optional)
        - ip_filter_deny_all (optional)
        - ip_filter_permissive_rule (optional)
        - open_ports (optional)
        - permissive_firewall_policy (optional)
        - permissive_input_firewall_rules (optional)
        - permissive_output_firewall_rules (optional)
        - privileged_docker_options (optional)
        - shared_credentials (optional)
        - vulnerable_tls_cipher_suite (optional)
EOT

  type = map(object({
    display_name               = string
    iothub_ids                 = set(string)
    location                   = string
    name                       = string
    resource_group_name        = string
    disabled_data_sources      = optional(set(string))
    enabled                    = optional(bool)
    events_to_export           = optional(set(string))
    log_analytics_workspace_id = optional(string)
    log_unmasked_ips_enabled   = optional(bool)
    query_for_resources        = optional(string)
    query_subscription_ids     = optional(set(string))
    tags                       = optional(map(string))
    additional_workspace = optional(list(object({
      data_types   = set(string)
      workspace_id = string
    })))
    recommendations = optional(object({
      acr_authentication               = optional(bool)
      agent_send_unutilized_msg        = optional(bool)
      baseline                         = optional(bool)
      edge_hub_mem_optimize            = optional(bool)
      edge_logging_option              = optional(bool)
      inconsistent_module_settings     = optional(bool)
      install_agent                    = optional(bool)
      ip_filter_deny_all               = optional(bool)
      ip_filter_permissive_rule        = optional(bool)
      open_ports                       = optional(bool)
      permissive_firewall_policy       = optional(bool)
      permissive_input_firewall_rules  = optional(bool)
      permissive_output_firewall_rules = optional(bool)
      privileged_docker_options        = optional(bool)
      shared_credentials               = optional(bool)
      vulnerable_tls_cipher_suite      = optional(bool)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.iot_security_solutions : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.iot_security_solutions : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.iot_security_solutions : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.iot_security_solutions : (
        length(v.display_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.iot_security_solutions : (
        v.query_subscription_ids == null || (alltrue([for x in v.query_subscription_ids : can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", x))]))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.iot_security_solutions : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 16 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

