[![Generic badge](https://img.shields.io/badge/isv_labs_ver-<COLOR>.svg)](https://shields.io/) [![Generic badge](https://img.shields.io/badge/terraform-<COLOR>.svg)](https://shields.io/) [![Generic badge](https://img.shields.io/badge/oci_provider-<COLOR>.svg)](https://shields.io/)

## Description of the module
OKE Node Pools module

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
| cluster\_id | OCID of the cluster to which this node pool is attached | `string` | n/a | yes |
| kms\_key\_id | The OCID of the Key Management Service key assigned to the boot volume | `string` | `""` | no |
| encrypt\_in\_transit | in-transit encryption for the data volume's paravirtualized attachment | `bool` | `false` | no |
| kubernetes\_version | Kubernetes version | `string` | n/a | yes |
| ssh\_public\_key | SSH public key used to accept connections to nodes | `string` | n/a | yes |
| pool\_name | Name of node pool | `string` | n/a | yes |
| subnet\_name | OCID of subnet in which to place node | `any` | n/a | yes |
| node\_nsg\_ids | OCIDs of NSG to associate nodes for this node pool | `list(string)` | n/a | yes |
| node\_shape | Nodes shape | `string` | n/a | yes |
| ocpus | Node OCPUs | `number` | n/a | yes |
| memory\_in\_gbs | Node memory in GBs | `number` | n/a | yes |
| boot\_volume\_size | Boot volume in GBs | `number` | `50` | no |
| image\_name | Image name used for nodes | `string` | n/a | yes |
| placement\_configs | The placement configurations for the node pool | ```list(object({ ad = number subnet = string }))``` | n/a | yes |
| subnet\_ids | n/a | `map(string)` | n/a | yes |
| nodes\_count | Number of nodes | `number` | `3` | no |
| eviction\_grace\_duration | Time in minutes for eviction grace duration (0 will not force delete the nodes). Max 60 mins - ISO 8601 | `number` | n/a | yes |
| kubernetes\_labels | A list of key/value pairs to add to nodes after they join the Kubernetes cluster | `map(string)` | n/a | yes |
| node\_pool\_image\_ids | The ocids of a custom image to use for worker node. | `map(string)` | n/a | yes |
| freeform\_tags | Free-form tags | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| node\_pool\_id | n/a |
| node\_pool\_attributes | n/a |
