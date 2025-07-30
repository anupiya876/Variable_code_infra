resource "azurerm_application_gateway" "app_gtw" {
  name                = var.app_gtw_name
  resource_group_name = var.rg_name
  location            = var.location

  sku {
    name     = var.app_gtw_sku_name
    tier     = var.app_gtw_sku_tier
    capacity = var.app_gtw_sku_capacity
  }

  gateway_ip_configuration {
    name      = var.app_gtw_ip_config_name
    subnet_id = data.azurerm_subnet.subnet.id
  }

  frontend_port {
    name = var.app_gtw_frontend_port_name
    port = var.app_gtw_frontend_port
  }

  frontend_ip_configuration {
    name                 = var.app_gtw_frontend_ip_config_name
    public_ip_address_id = data.azurerm_public_ip.pip.id
  }

  backend_address_pool {
    name = var.app_gtw_backend_address_pool_name
  }

  backend_http_settings {
    name                  = var.app_gtw_backend_http_settings
    cookie_based_affinity = var.app_gtw_cookie_based_affinity
    path                  = var.app_gtw_http_path
    port                  = var.app_gtw_port_backend_http_settings
    protocol              = var.app_gtw_backend_http_protocol
    request_timeout       = var.backend_request_timeout
  }

  http_listener {
    name                           = var.http_listener_name
    frontend_ip_configuration_name = var.app_gtw_frontend_ip_config_name
    frontend_port_name             = var.app_gtw_frontend_port_name
    protocol                       = var.app_gtw_http_listener_protocol
  }

  request_routing_rule {
    name                       = var.request_routing_rule_name
    priority                   = var.request_routing_priority
    rule_type                  = var.request_routing_rule_type
    http_listener_name         = var.http_listener_name
    backend_address_pool_name  = var.app_gtw_backend_address_pool_name
    backend_http_settings_name = var.app_gtw_backend_http_settings
  }
}