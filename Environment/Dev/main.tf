module "resource_group" {
  source = "../../Modules/azurerm_resource_group"
  rg_name  = "infra-morning-rg"
location = "eastus"
}

module "vnet" {
    depends_on = [ module.resource_group ]
    source = "../../Modules/azurerm_vnet"
    vnet_name = "infra-morning-vnet"
    rg_name  = "infra-morning-rg"
    location = "eastus"

}

module "frontend_subnet" {
    depends_on = [ module.vnet ]
    source = "../../Modules/azurerm_subnet"
    subnet_name = "infra-morning-frontend_subnet"
    vnet_name = "infra-morning-vnet"
    rg_name  = "infra-morning-rg"
    address_prefixes = ["10.0.1.0/24"]
}
module "backend_subnet" {
    depends_on = [ module.vnet ]
    source = "../../Modules/azurerm_subnet"
    subnet_name = "infra-morning-backend_subnet"
    vnet_name = "infra-morning-vnet"
    rg_name  = "infra-morning-rg"
    address_prefixes = ["10.0.2.0/24"]
}

# module "nsg_frontend" {
#     depends_on = [ module.frontend_subnet ]
#     source = "../../Modules/azurerm_nsg"
#     nsg_name = "infra-morning-frontend-nsg"
#     rg_name  = "infra-morning-rg"
#     location = "eastus"
   
# }

# module "nsg_backend" {
#     depends_on = [ module.backend_subnet ]
#     source = "../../Modules/azurerm_nsg"
#     nsg_name = "infra-morning-backend-nsg"
#     rg_name  = "infra-morning-rg"
#     location = "eastus"
# }

# module "frontend_public_ip" {
#     depends_on = [ module.resource_group ]
#     source = "../../Modules/azurerm_public_ip"
#     pip_name = "infra-morning-frontend-public-ip"
#     rg_name  = "infra-morning-rg"
#     location = "eastus"
# }
# module "backend_public_ip" {
#     depends_on = [ module.resource_group ]
#     source = "../../Modules/azurerm_public_ip"
#     pip_name = "infra-morning-backend-public-ip"
#     rg_name  = "infra-morning-rg"
#     location = "eastus"
# }

# module "keyvault" {
#     depends_on = [ module.resource_group ]
#     source = "../../Modules/azurerm_keyvault"
#     keyvault_name = "infra-morning-keyvault"
#     rg_name  = "infra-morning-rg"
#     location = "eastus"
#     soft_delete_retention_days = 7
#     sku_name = "standard"  
# }

# module "keyvault_secret_vm_id" {
#     depends_on = [ module.keyvault ]
#     source = "../../Modules/azurerm_keyvault_secret"
#     keyvault_name = "infra-morning-keyvault"
#     secret_value = var.vm_id_secret
#     secret_name = "own-username-secret"
#     rg_name = "infra-morning-rg"
# }

# module "keyvault_secret_vm_password" {
#     depends_on = [ module.keyvault ]
#     source = "../../Modules/azurerm_keyvault_secret"
#     keyvault_name = "infra-morning-keyvault"
#     secret_value = var.vm_password_secret
#     secret_name = "own-password-secret"
#     rg_name = "infra-morning-rg"
# }

# module "keyvault_secret_administrator_id" {
#     depends_on = [ module.keyvault ]
#     source = "../../Modules/azurerm_keyvault_secret"
#     keyvault_name = "infra-morning-keyvault"
#     secret_value = var.server_admin_id_secret
#     secret_name = "server-admin-id-secret"
#     rg_name = "infra-morning-rg"
# }

# module "keyvault_secret_administrator_password" {
#     depends_on = [ module.keyvault ]
#     source = "../../Modules/azurerm_keyvault_secret"
#     keyvault_name = "infra-morning-keyvault"
#     secret_value = var.server_admin_password_secret
#     secret_name = "server-admin-password-secret"
#     rg_name = "infra-morning-rg"
# }



# module "frontend_vm" {
#     depends_on = [ module.frontend_public_ip, module.frontend_subnet, module.nsg_frontend, module.keyvault_secret_vm_id, module.keyvault_secret_vm_password ]
#     source = "../../Modules/azurerm_linux_vm"
#     vm_name = "infra-morning-frontend-vm"
#     rg_name  = "infra-morning-rg"
#     location = "eastus"
#     vm_size = "Standard_D2s_v3"
#     os_disk_storage_account_type = "Standard_LRS"
#     os_image_publisher = "Canonical"
#     os_image_offer = "0001-com-ubuntu-server-jammy"
#     os_image_sku = "22_04-lts"
#     nic_name = "infra-morning-frontend-nic"
#     ip_config_name = "infra-morning-frontend-ip-config"
#     vnet_name = "infra-morning-vnet"
#     subnet_name = "infra-morning-frontend_subnet"
#     keyvault_name = "infra-morning-keyvault"
#     admin_username = "own-username-secret"
#     admin_password_name = "own-password-secret"

# }

# module "backend_vm" {
#     depends_on = [ module.backend_public_ip, module.backend_subnet, module.nsg_backend, module.keyvault_secret_vm_id, module.keyvault_secret_vm_password ]
#     source = "../../Modules/azurerm_linux_vm"
#     vm_name = "infra-morning-backend-vm"
#     rg_name  = "infra-morning-rg"
#     location = "eastus"
#     vm_size = "Standard_D2s_v3"
#     os_disk_storage_account_type = "Standard_LRS"
#     os_image_publisher = "Canonical"
#     os_image_offer = "0001-com-ubuntu-server-jammy"
#     os_image_sku = "22_04-lts"
#     nic_name = "infra-morning-backend-nic"
#     ip_config_name = "infra-morning-backend-ip-config"
#     vnet_name = "infra-morning-vnet"
#     subnet_name = "infra-morning-backend_subnet"
#     keyvault_name = "infra-morning-keyvault"
#     admin_username = "own-username-secret"
#     admin_password_name = "own-password-secret"

# }

# module "sql_server" {
#     depends_on = [ module.keyvault_secret_administrator_id, module.keyvault_secret_administrator_password ]
#     source = "../../Modules/azurerm_sql_server"
#     sql_server_name = "infra-morning-sql-server"
#     rg_name  = "infra-morning-rg"
#     location = "eastus"
#     administrator_login_id = "server-admin-id-secret"
#     administrator_login_password_name = "server-admin-password-secret"
#     keyvault_name = "infra-morning-keyvault"
    
# }


# module "sql_database" {
#     depends_on = [ module.sql_server ]
#     source = "../../Modules/azurerm_database"
#     database_name = "infra-morning-sql-database"
#     database_collation = "SQL_Latin1_General_CP1_CI_AS"
#     enclave_type = "Default"
#     database_max_size = 10
#     database_sku_name = "S0"
#     sql_server_name = "infra-morning-sql-server"
#     rg_name = "infra-morning-rg"
# }
    