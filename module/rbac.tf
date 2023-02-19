
resource "azurerm_role_assignment" "role_assignment" {
  count = length(local.schema_role_mappings)

  scope                = var.scope_id
  role_definition_name = local.schema_role_mappings[count.index].role
  principal_id         = local.schema_role_mappings[count.index].id
}
