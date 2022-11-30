variable "compartment_id" {
  description = "ID of the compartment where the resources will be created"
  type        = string
}

variable "audit_config_ids" {
  type        = map(string)
  description = "Audit configuration IDs key => ocid"
  default     = {}
}

variable "freeform_tags" {
  description = "Placeholder for the free form tags applied to the resources"
  type        = map(string)
  default = {
    Managedby = "Terraform"
  }
}

variable "isv_konfig_ver" {
  description = "Placeholder for the module version applied to the resources"
  type        = map(string)
  default = {
    isv_konfig_ver = "0.0.1"
  }
}

variable "subnet_id" {
  type        = string
  description = "Subnet IDs key => ocid"
}

variable "hostname_label" {}
variable "display_name" {}

variable "admin_password" {}
variable "admin_username" {}
variable "ad" {
  type = number
}
variable "shape_name" {
  type    = string
  default = "MySQL.VM.Standard.E4.1.8GB"
}
variable "port" {}
variable "data_storage_size_in_gb" {}
variable "backup_is_enabled" {
  type = bool
}
variable "backup_retention_days" {}

variable "is_highly_available" {
  type    = bool
  default = false
}


# variable "db_params" {
#   description = "Placeholder for the parameters of the instances"
#   type = map(object({
#     admin_password           = string
#     admin_username           = string
#     ad                       = number
#     shape_name               = string
#     display_name             = string
#     hostname_label           = string
#     is_highly_available      = bool
#     port                     = number
#     data_storage_size_in_gb  = number
#     backup_is_enabled        = bool
#     backup_retention_days    = number
#   }))

#   validation {
#     condition = alltrue([
#       for item in var.db_params : can(item.display_name) && can(item.hostname_label)
#     ])
#     error_message = "Variables display_name and hostname_label are required."
#   }

#   validation {
#     condition = alltrue([
#       for item in var.db_params : item.port > 0 && item.port_x > 0 && item.port < 65535 && item.port_x < 65535
#     ])
#     error_message = "Variables port and port_x are required and must be between (0, 65535)."
#   }

#   validation {
#     condition = alltrue([
#       for item in var.db_params : can(item.admin_password) && length(item.admin_password) >= 8 && length(item.admin_password) <= 32
#     ])
#     error_message = "Variable admin_password is required. It can have between 8 and 32 chars."
#   }

#   validation {
#     condition = alltrue([
#       for item in var.db_params : (item.is_highly_available == false && item.heatwave_is_enabled == true) || (item.is_highly_available == true && item.heatwave_is_enabled == false) || (item.is_highly_available == false && item.heatwave_is_enabled == false)
#     ])
#     error_message = "An instance cannot be highly available and also use HeatWave technology."
#   }
# }
