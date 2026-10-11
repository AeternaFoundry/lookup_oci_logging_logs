output "logging_logs_lookup_id" {
  description = "Map of id values across all logging_logs_lookup, keyed the same as var.logging_logs_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_logging_logs.logging_logs_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "logging_logs_lookup_display_name" {
  description = "Map of display_name values across all logging_logs_lookup, keyed the same as var.logging_logs_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.oci_logging_logs.logging_logs_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "logging_logs_lookup_filter" {
  description = "Map of filter values across all logging_logs_lookup, keyed the same as var.logging_logs_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_logging_logs.logging_logs_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "logging_logs_lookup_log_group_id" {
  description = "Map of log_group_id values across all logging_logs_lookup, keyed the same as var.logging_logs_lookup except keys with no log_group_id are omitted"
  value       = { for k, v in data.oci_logging_logs.logging_logs_lookup : k => v.log_group_id if v.log_group_id != null && length(v.log_group_id) > 0 }
}
output "logging_logs_lookup_log_type" {
  description = "Map of log_type values across all logging_logs_lookup, keyed the same as var.logging_logs_lookup except keys with no log_type are omitted"
  value       = { for k, v in data.oci_logging_logs.logging_logs_lookup : k => v.log_type if v.log_type != null && length(v.log_type) > 0 }
}
output "logging_logs_lookup_logs" {
  description = "Map of logs values across all logging_logs_lookup, keyed the same as var.logging_logs_lookup except keys with no logs are omitted"
  value       = { for k, v in data.oci_logging_logs.logging_logs_lookup : k => v.logs if v.logs != null && length(v.logs) > 0 }
}
output "logging_logs_lookup_source_resource" {
  description = "Map of source_resource values across all logging_logs_lookup, keyed the same as var.logging_logs_lookup except keys with no source_resource are omitted"
  value       = { for k, v in data.oci_logging_logs.logging_logs_lookup : k => v.source_resource if v.source_resource != null && length(v.source_resource) > 0 }
}
output "logging_logs_lookup_source_service" {
  description = "Map of source_service values across all logging_logs_lookup, keyed the same as var.logging_logs_lookup except keys with no source_service are omitted"
  value       = { for k, v in data.oci_logging_logs.logging_logs_lookup : k => v.source_service if v.source_service != null && length(v.source_service) > 0 }
}
output "logging_logs_lookup_state" {
  description = "Map of state values across all logging_logs_lookup, keyed the same as var.logging_logs_lookup except keys with no state are omitted"
  value       = { for k, v in data.oci_logging_logs.logging_logs_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}

