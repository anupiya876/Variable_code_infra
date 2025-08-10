variable "postgresql_server_name"{
    type = "string"
}

variable "rg_name"{
    type = "string"
}

variable "location"{
    type = "string"
}

variable "postgresql_server_version"{
    type = "string"
}

variable "postgresql_server_zone" {
  type = number
}

variable "postgresql_server_storage"{
    type = number
}

variable "postgresql_server_sku_name"{
    type = "string"
}

variable "postgresql_server_storage_tier"{
    type = "string"
}

variable "subnet_name"{
    type = "string"
}

variable "vnet_name"{
    type = "string"
}

variable "postgresql_admin_username"{
    type = "string"
}

variable "postgresql_admin_passwordname"{
    type = "string"
}

variable "keyvault_name"{
    type = "string"
}