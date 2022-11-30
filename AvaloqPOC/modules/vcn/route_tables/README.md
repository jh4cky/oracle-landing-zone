<!-- BEGIN_TF_DOCS -->
[![Generic badge](https://img.shields.io/badge/isv_labs_ver-<COLOR>.svg)](https://shields.io/) [![Generic badge](https://img.shields.io/badge/terraform-<COLOR>.svg)](https://shields.io/) [![Generic badge](https://img.shields.io/badge/oci_provider-<COLOR>.svg)](https://shields.io/)

## Description of the module
Route Tables module

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 1.0.0 |
| oci | >=4.78.0 |

## Modules

No modules.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| compartment\_id | The OCID of the compartment to contain the route tables. | `string` | n/a | yes |
| vcn\_id | The OCID of the VCN the route tables are attached to. | `string` | n/a | yes |
| rt\_display\_name | Name of the route tables. | `string` | n/a | yes |
| route\_rules | The collection of rules used for routing destination IPs to network devices. | ```list(object({ network_entity_name = string destination = string destination_type = string }))``` | n/a | yes |
| network\_entity\_ids | Target IP addresses given by CIDR notation as destination for matching packets. | `map(string)` | n/a | yes |
| freeform\_tags | Free form tags applied to organize and list multiple route tables. | `map(string)` | ```{ "Managedby": "Terraform" }``` | no |

## Outputs

| Name | Description |
|------|-------------|
| rt\_id | This will output the subnet ids |
| rt\_attributes | This will output the subnet ids |
<!-- END_TF_DOCS -->