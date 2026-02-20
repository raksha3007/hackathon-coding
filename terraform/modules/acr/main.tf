resource "azurerm_container_registry" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.sku
  admin_enabled       = true
  
  network_rule_set {
    default_action = "Allow"
  }
  
  tags = {
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}
