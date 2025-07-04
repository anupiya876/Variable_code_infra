variable "vnet_name" {
  type        = string
}
variable "subnet_name" {
  type        = string
}
variable "nic_name" {
  type        = string
}
variable "ip_config_name" {
  type        = string
}
variable "vm_name" {
  type        = string
}
variable "rg_name" {
  type        = string
}
variable "location" {
  type        = string
}
variable "vm_size" {
  type        = string
}
 variable "admin_username" {
  type        = string
 }

 variable "admin_password_name" {
  type        = string
  sensitive   = true
 }

 variable "os_disk_storage_account_type" {
  type        = string
 }

 variable "os_image_publisher" {
  type        = string
 }
 variable "os_image_offer" {
  type        = string
 }
 variable "os_image_sku" {
  type        = string
 }
 variable "pip_name" {
  type        = string
 }
variable "keyvault_name" {
  type        = string
}