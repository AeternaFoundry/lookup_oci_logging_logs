variable "logging_logs_lookup" {
  description = <<EOT
Map of logging_logs_lookup, attributes below
Required:
    - log_group_id
Optional:
    - display_name
    - log_type
    - source_resource
    - source_service
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    log_group_id    = string
    display_name    = optional(string)
    log_type        = optional(string)
    source_resource = optional(string)
    source_service  = optional(string)
    state           = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

