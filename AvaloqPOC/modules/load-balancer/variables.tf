// Copyright (c) 2022, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

variable "compartment_id" {
  description = "ID of the compartment where the resources will be created"
  type        = string
}

variable "display_name" {
  description = "The name of the load balancer"
  type        = string
}

variable "shape" {
  description = "The shape of the image that will be created"
  type        = string
}

variable "subnet_ids" {
  description = "The subnet ids where there resource will be created"
  type        = list(string)
}

variable "ip_mode" {
  description = "Placeholder for private flag"
  type        = string
  default     = "IPV4"
}

variable "is_private" {
  description = "Private LB"
  type        = bool
}

variable "nsg_ids" {
  description = "The ID of the NSG"
  type        = list(string)
}

variable "freeform_tags" {
  description = "Placeholder for the free form tags applied to the resources"
  type        = map(string)
  default = {
    Managedby = "Terraform"
  }
}


variable "protocol" {
  description = "ID of the protocol"
  type        = string
}

variable "port" {
  description = "Placeholder for port"
  type        = number
}


variable "retries" {
  description = "Number of retries"
  type        = number
}


variable "interval_ms" {
  description = "interval in milliseconds"
  type        = number
}


variable "timeout_in_millis" {
  description = "Time in millis "
  type        = number
}


variable "url_path" {
  description = "The url path"
  type        = string
}


variable "return_code" {
  description = "Placeholder for return code"
  type        = number
}

variable "name" {
  description = "Backendset name"
  type        = string
}


variable "policy" {
  description = "Backendset policy"
  type        = string
}

variable "backend_params" {
  description = "Parameters for LB associated backends"
  type = map(object({
    port   = number
    weight = number
  }))
}

variable "ip_address" {
  description = "Backend IP address"
  type        = string
}

variable "listener_params" {
  description = "Parameters for lb listeners"
  type = map(object({
    name     = string
    port     = number
    protocol = string
    #routing_policy_name = string
  }))
}

variable "lb_cert_params" {
  description = "Parameters for lb certs"
  type = object({
    certificate_name   = string
    ca_certificate     = string
    private_key        = string
    public_certificate = string
  })
}

# variable "lb_routing_policy_params" {
#   description = "Paramateres for route params"
#   type = map(object({
#     lb_name                    = string
#     condition_language_version = string
#     name                       = string
#     rules = list(object({
#       action_name = string
#       lb_bs_name  = string
#       condition   = string
#       name        = string
#     }))
#   }))
# }


#disabled and switch to manually created certificate ocid to workaround bug: https://github.com/terraform-providers/terraform-provider-oci/issues/1477
# variable "lb_certificate_params" {
#   description = "Load Balancer Certificate Params"
#     type = map(object({
#     config_type = string
#     cert_chain_pem = string
#     certificate_pem = string
#     private_key_pem = string
#     private_key_pem_passphrase = string
#     version_name = string
#     name = string
#     description = string
#   }))

#   validation {
#     condition = alltrue([for key, item in var.lb_certificate_params :
#       (contains(["IMPORTED"], item.protocol) && length(item.config_type) > 3) &&
#       length(item.certificate_pem) > 0 &&
#       length(item.private_key_pem) > 0 &&
#       length(item.name) > 0 &&
#       length(item.description) > 0
#     ])
#     error_message = "Invalid Certificate Configuration."
#   }
# } 



# variable "weight" {}
# variable "lb_params" {
#   description = "Parameters for the load balancer"
#   type = map(object({
#     display_name = string
#     shape        = string
#     subnet_name  = string
#     ip_mode      = string
#     is_private   = bool
#     nsg_ids      = list(string)
#   }))
# }

# variable "lb_bs_params" {
#   description = "Parameters for LB backend sets"
#   type = map(object({
#     lb_name                    = string
#     health_checker_protocol    = string
#     health_checker_url_path    = string
#     health_checker_port        = number
#     health_checker_interval    = number
#     health_checker_timeout     = number
#     health_checker_retries     = number
#     health_checker_return_code = number
#     name                       = string
#     policy                     = string
#   }))
# }