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
    - recommendations_enabled (block):
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
    enabled                    = optional(bool) # Default: true
    events_to_export           = optional(set(string))
    log_analytics_workspace_id = optional(string)
    log_unmasked_ips_enabled   = optional(bool) # Default: false
    query_for_resources        = optional(string)
    query_subscription_ids     = optional(set(string))
    tags                       = optional(map(string))
    additional_workspace = optional(object({
      data_types   = set(string)
      workspace_id = string
    }))
    recommendations_enabled = optional(object({
      acr_authentication               = optional(bool) # Default: true
      agent_send_unutilized_msg        = optional(bool) # Default: true
      baseline                         = optional(bool) # Default: true
      edge_hub_mem_optimize            = optional(bool) # Default: true
      edge_logging_option              = optional(bool) # Default: true
      inconsistent_module_settings     = optional(bool) # Default: true
      install_agent                    = optional(bool) # Default: true
      ip_filter_deny_all               = optional(bool) # Default: true
      ip_filter_permissive_rule        = optional(bool) # Default: true
      open_ports                       = optional(bool) # Default: true
      permissive_firewall_policy       = optional(bool) # Default: true
      permissive_input_firewall_rules  = optional(bool) # Default: true
      permissive_output_firewall_rules = optional(bool) # Default: true
      privileged_docker_options        = optional(bool) # Default: true
      shared_credentials               = optional(bool) # Default: true
      vulnerable_tls_cipher_suite      = optional(bool) # Default: true
    }))
  }))
}

