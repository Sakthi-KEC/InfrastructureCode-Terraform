variable "resource_group_name" {
  default       = "Master_Data_Management"
  description   = "Name of the resource group"
}

variable "resource_group_location" {
  default = "westeurope"
  description   = "Location of the resource group"
}

variable "app_service_plan" {
  default = "ASP-MasterDataManagement"
  description   = "Location of the resource group"
}

variable "microservice1_name" {
  default = "MDM-CurrencyConversion"
}

variable "microservice2_name" {
  default = "MDM-Customer"
}

variable "microservice3_name" {
  default = "MDM-DangerousCargo"
}

variable "microservice4_name" {
  default = "MDM-Location"
}

variable "microservice5_name" {
  default = "MDM-RsCommodity"
}

variable "microservice6_name" {
  default = "MDM-RsCommodityGroup"
}

variable "microservice7_name" {
  default = "MDM-Transportation"
}