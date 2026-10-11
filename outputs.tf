output "link_values_id" {
  description = "Map of id values across all link_values, keyed the same as var.link_values except keys with no id are omitted"
  value       = { for k, v in okta_link_value.link_values : k => v.id if v.id != null && length(v.id) > 0 }
}
output "link_values_associated_user_ids" {
  description = "Map of associated_user_ids values across all link_values, keyed the same as var.link_values except keys with no associated_user_ids are omitted"
  value       = { for k, v in okta_link_value.link_values : k => v.associated_user_ids if v.associated_user_ids != null && length(v.associated_user_ids) > 0 }
}
output "link_values_primary_name" {
  description = "Map of primary_name values across all link_values, keyed the same as var.link_values except keys with no primary_name are omitted"
  value       = { for k, v in okta_link_value.link_values : k => v.primary_name if v.primary_name != null && length(v.primary_name) > 0 }
}
output "link_values_primary_user_id" {
  description = "Map of primary_user_id values across all link_values, keyed the same as var.link_values except keys with no primary_user_id are omitted"
  value       = { for k, v in okta_link_value.link_values : k => v.primary_user_id if v.primary_user_id != null && length(v.primary_user_id) > 0 }
}

