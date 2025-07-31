output "acr_id" {
  description = "ID du Container Registry"
  value       = azurerm_container_registry.contenairregistry.id
}

output "acr_name" {
  description = "Nom du Container Registry"
  value       = azurerm_container_registry.contenairregistry.name
}
