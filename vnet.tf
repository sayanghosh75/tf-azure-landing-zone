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

resource "azurerm_virtual_network" "example" {
  name                = "example-network"
  location            = var.resource_group_location
  resource_group_name = azurerm_resource_group.examplerg.name
  address_space       = ["10.0.0.0/16"]
  //External Public DNS server - Cisco
  dns_servers         = ["208.67.220.220", "208.67.220.222"]

  //Uncomment as required for DNS configurations
  //Azure DNS server
  //dns_servers         = ["168.63.129.16"]
  //Internal org owned DNS servers
  //dns_servers         = ["10.0.0.4", "10.0.0.5"]

   tags = {
   environment = "Production"
  }
}