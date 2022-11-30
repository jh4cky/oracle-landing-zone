# Copyright 2017, 2022 Oracle Corporation and/or affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl

output "vcn_ids" {
  description = "id of vcn that is created"
  value = { for k, v in module.vcn :
    k => v.vcn_id
  }
}

output "instance_ids" {
  description = "id of instance that is created"
  value = { for k, v in module.instance :
    k => v.instance_ids
  }
}

output "instance_publicIP" {
  description = "id of instance that is created"
  value = { for k, v in module.instance :
    k => v.instance_attributes.public_ip
  }
}

output "vcn_compartments" {
  description = "id of vcn compartment that is created"
  value = { for k, v in module.vcn :
    k => v.vcn_attributes.compartment_id
  }
}

output "subnet_ids" {
  description = "id of subnet that is created"
  value = { for k, v in module.subnets :
    k => v.subnet_id
  }
}

output "subnet_cidr" {
  description = "cidr of subnet that is created"
  value = { for k, v in module.subnets :
    k => v.subnets_attributes.cidr_block
  }
}

output "igw_ids" {
  description = "id of vcn that is created"
  value = { for k, v in module.internet_gateway :
    k => v.igw_id
  }
}

output "natgw_ids" {
  description = "id of vcn that is created"
  value = { for k, v in module.nat_gateway :
    k => v.nat_id
  }
}

output "sgw_ids" {
  description = "id of vcn that is created"
  value = { for k, v in module.service_gateway :
    k => v.sgw_id
  }
}

output "nsg_ids" {
  description = "id of vcn that is created"
  value = { for k, v in module.ns_groups :
    k => v.nsg_ids
  }
}

output "security_list_ids" {
  value = module.security_lists
}


# output "igw_att" {
#   description = "id of vcn that is created"
#   value       = module.internet_gateway
# }

# output "rt_tables" {
#   description = "id of vcn that is created"
#   value       = module.route_tables
# }



# output "drg_id" {
#   description = "id of the attached drg"
#   value       =  module.vcn[*].drg_id
# output "rpc_id" {
#   description = "id of rpc if it is created"
#   value       = var.create_drg ? join(",", module.drg_from_vcn_module[*].rpc_id) : ""
# }

# output "natgw_ids" {
#   description = "id of nat gateway if it is created"
#   value = { for k, v in module.vcn :
#     k => v.nat_gateway_id
#   }
# }
# output "igw_ids" {
#   description = "id of internet gateway if it is created"
#   value = { for k, v in module.vcn :
#     k => v.internet_gateway_id
#   }
# }

# output "nsg_ids" {
#   value = module.ns_groups

# }


# output "service_gateway_id" {
#   description = "id of service gateway if it is created"
#   value       = join(",", oci_core_service_gateway.service_gateway[*].id)
# }

# output "ig_route_id" {
#   description = "id of internet gateway route table"
#   value       = join(",", oci_core_route_table.ig[*].id)
# }

# output "nat_route_id" {
#   description = "id of VCN NAT gateway route table"
#   value       = join(",", oci_core_route_table.nat[*].id)
# }

# # New complete outputs for each resources with provider parity. Auto-updating.
# # Usefull for module composition.

# output "drg_attachment_all_attributes" {
#   #! deprecation notice: this output will be removed at next major release
#   description = "Deprecated: Use drg sub-module instead. all attributes related to drg attachment"
#   value       = { for k, v in oci_core_drg_attachment.drg_from_vcn_module : k => v }
# }

# output "internet_gateway_all_attributes" {
#   description = "all attributes of created internet gateway"
#   value       = { for k, v in oci_core_internet_gateway.ig : k => v }
# }

# output "ig_route_all_attributes" {
#   description = "all attributes of created ig route table"
#   value       = { for k, v in oci_core_route_table.ig : k => v }
# }

# output "lpg_all_attributes" {
#   description = "all attributes of created lpg"
#   value       = { for k, v in oci_core_local_peering_gateway.lpg : k => v }
# }

# output "nat_gateway_all_attributes" {
#   description = "all attributes of created nat gateway"
#   value       = { for k, v in oci_core_nat_gateway.nat_gateway : k => v }
# }

# output "nat_route_all_attributes" {
#   description = "all attributes of created nat gateway route table"
#   value       = { for k, v in oci_core_route_table.nat : k => v }
# }

# output "service_gateway_all_attributes" {
#   description = "all attributes of created service gateway"
#   value       = { for k, v in oci_core_service_gateway.service_gateway : k => v }
# }

# output "vcn_all_attributes" {
#   description = "all attributes of created vcn"
#   value       = { for k, v in oci_core_vcn.vcn : k => v }
# }

# output "drg_summary" {
#   value = { for k, v in module.drg_from_vcn_module : k => v.drg_summary } 
# }