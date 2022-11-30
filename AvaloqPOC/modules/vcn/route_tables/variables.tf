variable "compartment_id" {
  description = "The OCID of the compartment to contain the route tables."
  type        = string
}

variable "vcn_id" {
  description = "The OCID of the VCN the route tables are attached to."
  type        = string
}

variable "rt_display_name" {
  description = "Name of the route tables."
  type        = string
}

variable "route_rules" {
  description = "The collection of rules used for routing destination IPs to network devices."
  type = list(object({
    network_entity_name = string
    destination         = string
    destination_type    = string
  }))
}

variable "network_entity_ids" {
  description = "Target IP addresses given by CIDR notation as destination for matching packets."
  type        = map(string)
}

variable "freeform_tags" {
  description = "Free form tags applied to organize and list multiple route tables."
  type        = map(string)
  default = {
    Managedby = "Terraform"
  }
}
