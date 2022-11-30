[![Generic badge](https://img.shields.io/badge/isv_labs_ver-<COLOR>.svg)](https://shields.io/) [![Generic badge](https://img.shields.io/badge/terraform-<COLOR>.svg)](https://shields.io/) [![Generic badge](https://img.shields.io/badge/oci_provider-<COLOR>.svg)](https://shields.io/)

## Description of the module
OCI OpenSearch Cluster module  

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
| compartment\_id | ID of the compartment where the resources will be created | `string` | n/a | yes |
| data\_node\_count | n/a | `number` | n/a | yes |
| data\_node\_host\_memory\_gb | n/a | `number` | n/a | yes |
| data\_node\_host\_ocpu\_count | n/a | `number` | n/a | yes |
| data\_node\_storage\_gb | n/a | `number` | n/a | yes |
| data\_node\_host\_type | n/a | `string` | n/a | yes |
| display\_name | n/a | `string` | n/a | yes |
| master\_node\_count | n/a | `number` | n/a | yes |
| master\_node\_host\_memory\_gb | n/a | `number` | n/a | yes |
| master\_node\_host\_ocpu\_count | n/a | `number` | n/a | yes |
| master\_node\_host\_type | n/a | `string` | n/a | yes |
| opendashboard\_node\_count | n/a | `number` | n/a | yes |
| opendashboard\_node\_host\_memory\_gb | n/a | `number` | n/a | yes |
| opendashboard\_node\_host\_ocpu\_count | n/a | `number` | n/a | yes |
| software\_version | n/a | `string` | n/a | yes |
| subnet\_id | n/a | `string` | n/a | yes |
| subnet\_compartment\_id | n/a | `string` | n/a | yes |
| vcn\_id | n/a | `string` | n/a | yes |
| vcn\_compartment\_id | n/a | `string` | n/a | yes |
| freeform\_tags | Placeholder for the free form tags applied to the resources | `map(string)` | ```{ "Managedby": "Terraform" }``` | no |

## Outputs

| Name | Description |
|------|-------------|
| oci\_opensearch\_cluster\_ids | OpenSearch Cluster ID |
| oci\_opensearch\_cluster\_attributes | OpenSearch Cluster Attributes |
