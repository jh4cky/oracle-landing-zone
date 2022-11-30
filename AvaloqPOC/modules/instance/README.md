[![Generic badge](https://img.shields.io/badge/isv_labs_ver-<COLOR>.svg)](https://shields.io/) [![Generic badge](https://img.shields.io/badge/terraform-<COLOR>.svg)](https://shields.io/) [![Generic badge](https://img.shields.io/badge/oci_provider-<COLOR>.svg)](https://shields.io/)

## Description of the module
OCI Instance module  

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 1.0.0 |
| oci | >= 4.67.3 |

## Modules

No modules.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| tenancy\_id | Tenancy OCID | `string` | n/a | yes |
| compartment\_id | Compartment OCID | `string` | n/a | yes |
| image\_id | Image OCID | `string` | n/a | yes |
| ad | Availability Domain | `number` | n/a | yes |
| fd | Fault Domain | `number` | n/a | yes |
| shape | Instance shape | `string` | n/a | yes |
| hostname | The hostname for the VNIC's primary private IP | `string` | n/a | yes |
| boot\_volume\_size | The size of the boot volume in GBs | `number` | `50` | no |
| assign\_public\_ip | If VNIC should be assigned a public IP | `bool` | n/a | yes |
| preserve\_boot\_volume | Preserve boot volume at instance termination | `bool` | n/a | yes |
| subnet\_id | Subnet OCID | `string` | n/a | yes |
| ssh\_public\_key | SSH public key used to accept connections | `string` | n/a | yes |
| kms\_key\_id | Master encryption key OCID for boot volume | `string` | `""` | no |
| encrypt\_in\_transit | Enable in-transit encryption for the data volume's | `bool` | `false` | no |
| nsg\_ids | List of the OCIDs of the network security groups (NSGs) to add the VNIC | `list(string)` | n/a | yes |
| freeform\_tags | Free-form tags for this resource | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| instance\_ids | n/a |
| instance\_attributes | n/a |
