# Create the resource group 
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

# Create the App Service Plan 
resource "azurerm_app_service_plan" "appserviceplan" {
  name                = var.app_service_plan
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku {
    tier = "Basic"
    size = "B1"
  }
}

# Create the web app for CurrencyConversion
resource "azurerm_app_service" "microservice1" {
  name                = var.microservice1_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.appserviceplan.id
  site_config {
    java_version      = 11
  }
  
  source_control {
    repo_url           = "https://github.com/Sakthi-KEC/CurrencyConversion"
    branch             = "master"
    manual_integration = true
    use_mercurial      = false
  }
}
# Create the web app for Customer
resource "azurerm_app_service" "microservice2" {
  name                = var.microservice2_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.appserviceplan.id
  site_config {
    java_version      = 11
  }
  
  source_control {
    repo_url           = "https://github.com/Sakthi-KEC/Customer"
    branch             = "master"
    manual_integration = true
    use_mercurial      = false
  }
}
# Create the web app for DangerousCargo
resource "azurerm_app_service" "microservice3" {
  name                = var.microservice3_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.appserviceplan.id
  site_config {
    java_version      = 11
  }
  
  source_control {
    repo_url           = "https://github.com/Sakthi-KEC/DangerousCargo"
    branch             = "master"
    manual_integration = true
    use_mercurial      = false
  }
}
# Create the web app for Location
resource "azurerm_app_service" "microservice4" {
  name                = var.microservice4_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.appserviceplan.id
  site_config {
    java_version      = 11
  }
  
  source_control {
    repo_url           = "https://github.com/Sakthi-KEC/Location"
    branch             = "master"
    manual_integration = true
    use_mercurial      = false
  }
}
# Create the web app for RsCommodity
resource "azurerm_app_service" "microservice5" {
  name                = var.microservice5_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.appserviceplan.id
  site_config {
    java_version      = 11
  }
  
  source_control {
    repo_url           = "https://github.com/Sakthi-KEC/RsCommodity"
    branch             = "master"
    manual_integration = true
    use_mercurial      = false
  }
}
# Create the web app for RsCommodityGroup
resource "azurerm_app_service" "microservice6" {
  name                = var.microservice6_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.appserviceplan.id
  site_config {
    java_version      = 11
  }
  
  source_control {
    repo_url           = "https://github.com/Sakthi-KEC/RsCommodityGroup"
    branch             = "master"
    manual_integration = true
    use_mercurial      = false
  }
}
# Create the web app for Transportation
resource "azurerm_app_service" "microservice7" {
  name                = var.microservice7_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.appserviceplan.id
  site_config {
    java_version      = 11
  }
  
  source_control {
    repo_url           = "https://github.com/Sakthi-KEC/Transportation"
    branch             = "master"
    manual_integration = true
    use_mercurial      = false
  }
}
