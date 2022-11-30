<!-- BEGIN_TF_DOCS -->
[![Generic badge](https://img.shields.io/badge/isv_labs_ver-<COLOR>.svg)](https://shields.io/) [![Generic badge](https://img.shields.io/badge/terraform-<COLOR>.svg)](https://shields.io/) [![Generic badge](https://img.shields.io/badge/oci_provider-<COLOR>.svg)](https://shields.io/)

## Description of the module
Network Security Groups module

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
| compartment\_id | The OCID of the compartment to contain the network security group. | `string` | n/a | yes |
| vcn\_id | The OCID of the VCN the network security group is attached to. | `string` | n/a | yes |
| nsg\_display\_name | Name of the network security group | `string` | n/a | yes |
| nsg\_rules\_params | NSG Parameters: protocol, stateless, direction, source, source type, destination, destination type, tcp options, udp options | ```map(object({ #nsg_name = string protocol = string stateless = string direction = string source = string source_type = string destination = string destination_type = string tcp_options = list(object({ destination_ports = list(object({ min = number max = number })) source_ports = list(object({ min = number max = number })) })) udp_options = list(object({ destination_ports = list(object({ min = number max = number })) source_ports = list(object({ min = number max = number })) })) }))``` | n/a | yes |
| freeform\_tags | Free form tags applied to organize and list multiple network security group | `map(string)` | ```{ "Managedby": "Terraform" }``` | no |

## Outputs

| Name | Description |
|------|-------------|
| nsg\_ids | Network Security Group id |
| nsg\_attributes | Network Security Group attributes |
| nsg\_rules\_attributes | Network Security Group Rules |
<!-- END_TF_DOCS -->