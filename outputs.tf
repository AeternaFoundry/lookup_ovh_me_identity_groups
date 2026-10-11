output "me_identity_groups_lookup_id" {
  description = "Map of id values across all me_identity_groups_lookup, keyed the same as var.me_identity_groups_lookup except keys with no id are omitted"
  value       = { for k, v in data.ovh_me_identity_groups.me_identity_groups_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "me_identity_groups_lookup_groups" {
  description = "Map of groups values across all me_identity_groups_lookup, keyed the same as var.me_identity_groups_lookup except keys with no groups are omitted"
  value       = { for k, v in data.ovh_me_identity_groups.me_identity_groups_lookup : k => v.groups if v.groups != null && length(v.groups) > 0 }
}

