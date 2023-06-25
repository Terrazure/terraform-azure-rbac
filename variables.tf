variable "scope_id" {
  type        = string
  description = "The Id of the scope where the role should be assigned."
}

variable "role_mapping" {
  type = list(object({
    role_definition_name = string
    principal_ids        = list(string)
  }))
  description = "Role and principle id mapping. This block requires the following inputs:\n - `role_definition_name`: Role Name i.e. Key Vault Administrator \n - `principal_ids`: List of ids."
}
