module "role_assignment" {
  source = "../module"

  role_mapping = [
    {
      role_definition_name = "Key Vault Administrator"
      principal_ids        = [data.azurerm_client_config.current.object_id, ]
    },
    {
      role_definition_name = "Key Vault Reader"
      principal_ids        = [data.azurerm_client_config.current.object_id, ]
    }
  ]

  scope_id = azurerm_key_vault.this.id
}
