locals {
  network_entity = merge(
    { for k, v in module.internet_gateway : k => v.igw_id },
    { for k, v in module.nat_gateway : k => v.nat_id },
    { for k, v in module.service_gateway : k => v.sgw_id },
    { for k, v in module.drg : k => v.drg_id }
  )
  # compartment_ids = data.terraform_remote_state.iam.outputs.compartment_ids
}