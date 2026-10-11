variable "link_values" {
  description = <<EOT
Map of link_values, attributes below
Required:
    - primary_name
    - primary_user_id
Optional:
    - associated_user_ids
EOT

  type = map(object({
    primary_name        = string
    primary_user_id     = string
    associated_user_ids = optional(set(string))
  }))
}

