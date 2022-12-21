# Copyright 2021, 2022. Kyndryl All Rights Reserved.
# #
# # Licensed under the Apache License, Version 2.0 (the "License");
# # you may not use this file except in compliance with the License.
# # You may obtain a copy of the License at
# #
# # https://www.apache.org/licenses/LICENSE-2.0
# #
# # Unless required by applicable law or agreed to in writing, software
# # distributed under the License is distributed on an "AS IS" BASIS,
# # WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# # See the License for the specific language governing permissions and
# # limitations under the License.
# #

resource "azurerm_subnet" "example-servers" {
  name                 = "Compute-subnet"
  resource_group_name  = azurerm_resource_group.examplerg.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_subnet" "example-nat" {
  name                 = "NAT-subnet"
  resource_group_name  = azurerm_resource_group.examplerg.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["10.0.2.0/24"]
}

//Bastion PaaS requires "AzureBastionSubnet"
resource "azurerm_subnet" "example-bastion" {
  name                 = "AzureBastionSubnet"
  resource_group_name  = azurerm_resource_group.examplerg.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["10.0.3.224/27"]
}

//VPN Gateway requires "GatewaySubnet"
resource "azurerm_subnet" "example-vpn-gw" {
  name                 = "GatewaySubnet"
  resource_group_name  = azurerm_resource_group.examplerg.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["10.0.4.224/27"]
}