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
    additional_workspace = optional(list(object({
      data_types   = set(string)
      workspace_id = string
    })))
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
  # --- Unconfirmed validation candidates, derived from azurerm_iot_security_solution's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.IotSecuritySolutionName] !ok
  # path: name
  #   source:    [from validate.IotSecuritySolutionName] !regexp.MustCompile(`^([-a-zA-Z0-9_.])+$`).MatchString(v)
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: display_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: iothub_ids[*]
  #   source:    [from iothubValidate.IotHubID] !ok
  # path: iothub_ids[*]
  #   source:    [from iothubValidate.IotHubID] err != nil
  # path: additional_workspace.data_types[*]
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: additional_workspace.workspace_id
  #   source:    [from workspaces.ValidateWorkspaceID] !ok
  # path: additional_workspace.workspace_id
  #   source:    [from workspaces.ValidateWorkspaceID] err != nil
  # path: disabled_data_sources[*]
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: log_analytics_workspace_id
  #   source:    [from workspaces.ValidateWorkspaceID] !ok
  # path: log_analytics_workspace_id
  #   source:    [from workspaces.ValidateWorkspaceID] err != nil
  # path: events_to_export[*]
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: query_subscription_ids[*]
  #   condition: can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", value))
  #   message:   must be a valid UUID
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

