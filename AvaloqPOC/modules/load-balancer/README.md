[![Generic badge](https://img.shields.io/badge/isv_labs_ver-<COLOR>.svg)](https://shields.io/) [![Generic badge](https://img.shields.io/badge/terraform-<COLOR>.svg)](https://shields.io/) [![Generic badge](https://img.shields.io/badge/oci_provider-<COLOR>.svg)](https://shields.io/)

## Description of the module
Terraform module for creating an L7 load balancer on OCI.

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
| display\_name | The name of the load balancer | `string` | n/a | yes |
| shape | The shape of the image that will be created | `string` | n/a | yes |
| subnet\_ids | The subnet ids where there resource will be created | `list(string)` | n/a | yes |
| ip\_mode | Placeholder for private flag | `string` | `"IPV4"` | no |
| is\_private | Private LB | `bool` | n/a | yes |
| nsg\_ids | The ID of the NSG | `list(string)` | n/a | yes |
| freeform\_tags | Placeholder for the free form tags applied to the resources | `map(string)` | ```{ "Managedby": "Terraform" }``` | no |
| protocol | ID of the protocol | `string` | n/a | yes |
| port | Placeholder for port | `number` | n/a | yes |
| retries | Number of retries | `number` | n/a | yes |
| interval\_ms | interval in milliseconds | `number` | n/a | yes |
| timeout\_in\_millis | Time in millis | `number` | n/a | yes |
| url\_path | The url path | `string` | n/a | yes |
| return\_code | Placeholder for return code | `number` | n/a | yes |
| name | Backendset name | `string` | n/a | yes |
| policy | Backendset policy | `string` | n/a | yes |
| backend\_params | Parameters for LB associated backends | ```map(object({ ip_address = string port = number weight = number }))``` | n/a | yes |
| listener\_params | Parameters for lb listeners | ```map(object({ name = string port = number protocol = string #routing_policy_name = string }))``` | n/a | yes |
| lb\_cert\_params | Parameters for lb certs | ```object({ certificate_name = string ca_certificate = string private_key = string public_certificate = string })``` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| lb\_ids | LB OCID |
| lb\_attributes | LB attributes |
