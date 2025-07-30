variable "rg_name"{
    type =  "string"
}
variable "storage_account_name"{
    type =  "string"
}

variable "location"{
    type =  "string"
    }


variable "storage_account_tier"{
    type =  "string"
}

variable "storage_account_replication_type"{
    type =  "string"
}

variable "subnet_name"{
    type = "string"
}

variable "vnet_name"{
    type = "string"
}

variable "network_default_action"{
    type = "string"
}


variable "network_ip_rules"{
    type = list(string)
}