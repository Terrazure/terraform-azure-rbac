locals {
  schema_role_mappings = flatten([
    for k in var.role_mapping : [
      for v in k.principal_ids : {
        role = k.role_definition_name
        id   = v
    }]
  ])
}
