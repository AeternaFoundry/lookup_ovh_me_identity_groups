variable "me_identity_groups_lookup" {
  description = <<EOT
Map of me_identity_groups_lookup, attributes below
EOT

  type = map(object({
  }))
  default = { all = {} }
}

