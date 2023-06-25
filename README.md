<!-- BEGIN_TF_DOCS -->


## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Sample

<details>
<summary>Click to expand</summary>

```hcl
module "role_assignment" {
  source = "../"

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
```
</details>

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_role_mapping"></a> [role\_mapping](#input\_role\_mapping) | Role and principle id mapping. This block requires the following inputs:<br> - `role_definition_name`: Role Name i.e. Key Vault Administrator <br> - `principal_ids`: List of ids. | <pre>list(object({<br>    role_definition_name = string<br>    principal_ids        = list(string)<br>  }))</pre> | n/a | yes |
| <a name="input_scope_id"></a> [scope\_id](#input\_scope\_id) | The Id of the scope where the role should be assigned. | `string` | n/a | yes |

## Outputs

No outputs.

## Resources

| Name | Type |
|------|------|
| [azurerm_role_assignment.role_assignment](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |

## Modules

No modules.
<!-- END_TF_DOCS -->