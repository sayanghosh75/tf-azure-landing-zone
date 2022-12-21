resource "azurerm_public_ip" "Nat-IP1" {
  name                = "natGatewayIP"
  resource_group_name = azurerm_resource_group.examplerg.name
  location            = var.resource_group_location
  allocation_method   = "Static"
  sku                 = "Standard"
  availability_zone   = "1"

  tags = {
    environment = "Production"
  }
}

resource "azurerm_public_ip" "Bastion-PaaS-IP" {
  name                = "BastionPaaSIP"
  resource_group_name = azurerm_resource_group.examplerg.name
  location            = var.resource_group_location
  allocation_method   = "Static"
  sku                 = "Standard"

  tags = {
    environment = "Production"
  }
}