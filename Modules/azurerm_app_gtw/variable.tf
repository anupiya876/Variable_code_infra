variable "app_gtw_name" {
    type = "string"
}

variable "rg_name" {
    type = "string"
}

variable "location" {
    type = "string"
}

variable "app_gtw_sku_name" {
    type = "string"
}

variable "app_gtw_sku_tier" {
    type = "string"
}

variable "app_gtw_sku_capacity" {
    type = "string"
}

variable "app_gtw_ip_config_name" {
    type = "string"
}

variable "app_gtw_frontend_port_name" {
    type = "string"
}

variable "app_gtw_frontend_port" {
    type = "number"
}

variable "app_gtw_frontend_ip_config_name" {
    type = "string"
}

variable "app_gtw_backend_address_pool_name" {
    type = "string"
}

variable "app_gtw_backend_http_settings" {
    type = "string"
}

variable "app_gtw_cookie_based_affinity" {
    type = "string"
}

variable "app_gtw_http_path" {
    type = "string"
}

variable "app_gtw_port_backend_http_settings" {
    type = "string"
} 

variable "app_gtw_backend_http_protocol"{
    type = "string"
}

variable "backend_request_timeout" {
    type = "string"
}

variable "http_listener_name"{
    type = "string"
}

variable "app_gtw_http_listener_protocol" {
    type = "string"
}

variable "request_routing_rule_name"{
    type = "string"
}

variable "request_routing_priority"{
    type = "string"
}

variable "request_routing_rule_type"{
    type = "string"
}

variable "pip_name" {
    type = "string"
}

variable "subnet_name"{
    type = "string"
}

variable "vnet_name"{
    type = "string"
}