data "oci_logging_logs" "logging_logs_lookup" {
  for_each = var.logging_logs_lookup

  log_group_id    = each.value.log_group_id
  display_name    = each.value.display_name
  log_type        = each.value.log_type
  source_resource = each.value.source_resource
  source_service  = each.value.source_service
  state           = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

