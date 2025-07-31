resource "azurerm_container_registry" "contenairregistry" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.sku
  admin_enabled       = true

  identity {
    type         = "UserAssigned"
    identity_ids = [var.user_assigned_identity_id]
  }

  tags = var.tags

  lifecycle {
    ignore_changes = [
      tags
    ]
  }
}

resource "azurerm_role_assignment" "acr_pull_role" {
  scope                = azurerm_container_registry.contenairregistry.id
  role_definition_name = "AcrPull"
  principal_id         = var.user_assigned_identity_principal

  depends_on = [azurerm_container_registry.contenairregistry]
}

resource "azurerm_role_assignment" "acr_contributor_role" {
  scope                = azurerm_container_registry.contenairregistry.id
  role_definition_name = "Container Registry Repository Contributor"
  principal_id         = var.user_assigned_identity_principal

  depends_on = [azurerm_container_registry.contenairregistry]
}
