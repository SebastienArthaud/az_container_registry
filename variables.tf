variable "name" {
  type        = string
  description = "Nom du Container Registry"
}

variable "resource_group_name" {
  type        = string
  description = "Nom du Resource Group"
}

variable "location" {
  type        = string
  description = "Localisation"
}

variable "sku" {
  type        = string
  description = "SKU du Container Registry"
}

variable "user_assigned_identity_id" {
  type        = string
  description = "ID de l'UAI"
}

variable "user_assigned_identity_principal" {
  type        = string
  description = "Principal ID de l'UAI"
}

variable "tags" {
  type        = map(string)
  description = "Map de tags"
  default     = {}
}
