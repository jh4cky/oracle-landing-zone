<!-- BEGIN_TF_DOCS -->
[![Generic badge](https://img.shields.io/badge/isv_labs_ver-<COLOR>.svg)](https://shields.io/) [![Generic badge](https://img.shields.io/badge/terraform-<COLOR>.svg)](https://shields.io/) [![Generic badge](https://img.shields.io/badge/oci_provider-<COLOR>.svg)](https://shields.io/)

## Description of the module
Security Lists module

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
| compartment\_id | The OCID of the compartment to contain the security lists. | `string` | n/a | yes |
| vcn\_id | The OCID of the VCN the security lists are attached to. | `string` | n/a | yes |
| default\_security\_list\_id | The security list's OCID | `string` | n/a | yes |
| security\_list\_display\_name | Name of the security list. | `string` | n/a | yes |
| ingress\_rules | Ingress security rules for allowing ingress IP packets. | ```list(object({ stateless = string protocol = string source = string source_type = string tcp_options = list(object({ min = number max = number })) udp_options = list(object({ min = number max = number })) }))``` | `[]` | no |
| egress\_rules | Egress security rules for allowing egress IP packets. | ```list(object({ stateless = string protocol = string destination = string #destination_type = string    tcp_options = list(object({ min = number max = number })) udp_options = list(object({ min = number max = number })) }))``` | `[]` | no |
| freeform\_tags | Free form tags applied to organize and list multiple security lists. | `map(string)` | ```{ "Managedby": "Terraform" }``` | no |

## Outputs

| Name | Description |
|------|-------------|
| sl\_id | This will output the subnet ids |
| sl\_attributes | This will output the subnet ids |
<!-- END_TF_DOCS -->