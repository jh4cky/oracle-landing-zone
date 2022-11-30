[![Generic badge](https://img.shields.io/badge/isv_labs-<COLOR>.svg)](https://shields.io/) [![Generic badge](https://img.shields.io/badge/terraform-<COLOR>.svg)](https://shields.io/) [![Generic badge](https://img.shields.io/badge/oci-<COLOR>.svg)](https://shields.io/)

## Project Name
OCI Compartment module

## Description of the module
This module creates a compartment in OCI

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
| description | The description you assign to the compartment during creation. Does not have to be unique, and it's changeable. | `string` | n/a | yes |
| enable\_delete | Defaults to false. If omitted or set to false the provider will implicitly import the compartment if there is a name collision, and will not actually delete the compartment on destroy or removal of the resource declaration. If set to true, the provider will throw an error on a name collision with another compartment, and will attempt to delete the compartment on destroy or removal of the resource declaration. | `bool` | `true` | no |
| freeform\_tags | Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. | `map(string)` | ```{ "Managedby": "Terraform" }``` | no |
| name | he name you assign to the compartment during creation. The name must be unique across all compartments in the parent compartment. Avoid entering confidential information. | `string` | n/a | yes |
| parent\_compartment\_id | The OCID of the parent compartment containing the compartment. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| compartments | n/a |
| id | n/a |
