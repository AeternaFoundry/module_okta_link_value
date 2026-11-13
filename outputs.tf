output "link_values_id" {
  description = "Map of id values across all link_values, keyed the same as var.link_values"
  value       = { for k, v in okta_link_value.link_values : k => v.id }
}
output "link_values_associated_user_ids" {
  description = "Map of associated_user_ids values across all link_values, keyed the same as var.link_values"
  value       = { for k, v in okta_link_value.link_values : k => v.associated_user_ids }
}
output "link_values_primary_name" {
  description = "Map of primary_name values across all link_values, keyed the same as var.link_values"
  value       = { for k, v in okta_link_value.link_values : k => v.primary_name }
}
output "link_values_primary_user_id" {
  description = "Map of primary_user_id values across all link_values, keyed the same as var.link_values"
  value       = { for k, v in okta_link_value.link_values : k => v.primary_user_id }
}

