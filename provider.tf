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

variable "client_secret" {}
variable "client_id" {}
variable "tenant_id" {}
variable "subscription_id" {}
variable "secret_id" {}
variable "resource_group_name" {}
variable "public_key_path"{}

terraform {

  required_version = ">=0.12"
  
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  tenant_id = var.tenant_id
  client_id = var.client_id
  client_secret = var.client_secret
}

provider "azuread"{
  tenant_id = var.tenant_id
  client_id = var.client_id
  client_secret = var.client_secret
  secret_id = var.secret_id
  use_cli = false
}


