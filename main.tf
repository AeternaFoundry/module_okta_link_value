resource "okta_link_value" "link_values" {
  for_each = var.link_values

  primary_name        = each.value.primary_name
  primary_user_id     = each.value.primary_user_id
  associated_user_ids = each.value.associated_user_ids
}

