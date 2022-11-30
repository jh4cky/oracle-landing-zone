# Copyright 2017, 2022 Oracle Corporation and/or affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl

# OCI Provider parameters
variable "provider_oci" {
  description = "oci provider parameters"
  type        = map(string)
}

# compartments parameters
variable "compartment_ids" {
  description = "Placeholder for compartments parameters"
  type = map(object({
    compartment_name = string
    compartment_id   = string
  }))
}

variable "instance_params" {
  description = "Core instance parameters"
  type = map(object({
    compartment_name                    = string
    hostname                            = string
    ad                                  = number
    fd                                  = number
    shape                               = string
    instance_shape_config_ocpus         = number
    instance_shape_config_memory_in_gbs = number
    os                                  = string
    boot_volume_size                    = number
    preserve_boot_volume                = bool
    assign_public_ip                    = bool
    subnet_name                         = string
    kms_key_id                          = string
    encrypt_in_transit                  = bool
    nsg_name                            = string
  }))
}

variable "instance_images" {
  description = "Placeholder with the OCID of the images to use"
  type = map(object({
    name     = string
    image_id = string
  }))
}

variable "ssh_public_key" {
  description = "The Public ssh key used to connect to the core instance"
  type        = string
}

# vcn parameters
variable "vcn_params" {
  description = "Placeholder for VCN parameters"
  type = map(object({
    vcn_cidr_blocks  = list(string)
    vcn_display_name = string
    vcn_dns_label    = string
    compartment_name = string
    enable_ipv6      = bool
  }))


  validation {
    condition     = alltrue([for item in var.vcn_params : length(item.vcn_cidr_blocks) > 0])
    error_message = "VCN cidr blocks list cannot be empty."
  }

  default = {
    demo_vcn = {
      vcn_cidr_blocks  = ["10.0.0.0/16"]
      vcn_display_name = "demo_vcn"
      vcn_dns_label    = "demovcn"
      compartment_name = "demo"
      enable_ipv6      = false
    }
  }
}

variable "drg_params" {
  description = "Placeholder for Dynamic Routing Gateway parameters"
  type = map(object({
    drg_display_name = string
    vcn_name         = string
  }))
  default = {}
}

variable "igw_params" {
  description = "Placeholder for Internet Gateway parameters"
  type = map(object({
    igw_display_name = string
    vcn_name         = string
  }))
  default = {}
}

variable "sgw_params" {
  description = "Placeholder for Service Gateway parameters"
  type = map(object({
    sgw_display_name = string
    vcn_name         = string
  }))
  default = {}
}

variable "natgw_params" {
  description = "Placeholder for NAT Gateway parameters"
  type = map(object({
    natgw_display_name = string
    vcn_name           = string
  }))
  default = {}
}

variable "subnet_params" {
  description = "Placeholder for Subnets parameters"
  type = map(object({
    subnet_display_name = string
    subnet_cidr_block   = string
    subnet_dns_label    = string
    is_subnet_private   = bool
    sl_name             = string
    rt_name             = string
    vcn_name            = string
    compartment_name    = string
  }))
  default = {}
}

variable "vpn_params" {
  description = "Placeholder for the parameters of the vpn connection"
  type = map(object({
    vcn_name                        = string
    ip_sec_connection_static_routes = list(string)
    ip_sec_connection_display_name  = string
    cpe_name                        = string
    drg_name                        = string
  }))
  default = {}
}

variable "cpe_params" {
  description = "Placeholder for the parameters of the virtual customer-premises equipment"
  type = map(object({
    vcn_name         = string
    cpe_display_name = string
    ip_address       = string
    cpe_shape_id     = string
  }))
  default = {}
}

variable "rt_params" {
  description = "Placeholder for the parameters of the vcn association with route table and route rules"
  type = map(object({
    vcn_name        = string
    rt_display_name = string
    route_rules = list(object({
      network_entity_name = string
      destination         = string
      destination_type    = string
    }))
  }))
  #default = {}
}

variable "sl_params" {
  description = "Placeholder for the parameters of the security lists"
  type = map(object({
    vcn_name     = string
    display_name = string
    egress_rules = list(object({
      stateless   = string
      protocol    = string
      destination = string
      tcp_options = list(object({
        min = number
        max = number
      }))
      udp_options = list(object({
        min = number
        max = number
      }))
    }))
    ingress_rules = list(object({
      stateless   = string
      protocol    = string
      source      = string
      source_type = string
      tcp_options = list(object({
        min = number
        max = number
      }))
      udp_options = list(object({
        min = number
        max = number
      }))
    }))
  }))
  default = {}
}

variable "nsg_params" {
  description = "Placeholder for Network Security Lists parametersß"
  type = map(object({
    vcn_name         = string
    display_name     = string
    compartment_name = string
    nsg_rules_params = map(object({
      #nsg_name         = string
      protocol         = string
      stateless        = string
      direction        = string
      source           = string
      source_type      = string
      destination      = string
      destination_type = string
      tcp_options = list(object({
        destination_ports = list(object({
          min = number
          max = number
        }))
        source_ports = list(object({
          min = number
          max = number
        }))
      }))
      udp_options = list(object({
        destination_ports = list(object({
          min = number
          max = number
        }))
        source_ports = list(object({
          min = number
          max = number
        }))
      }))
    }))
  }))
}

variable "freeform_tags" {
  description = "Placeholder for the free form tags applied to the resources"
  type        = map(string)
  default = {
    Managedby = "Terraform"
  }
}

variable "isv_labs" {
  description = "Placeholder for the module version applied to the resources"
  type        = map(string)
  default = {
    isv_labs = "0.0.1"
  }
}
