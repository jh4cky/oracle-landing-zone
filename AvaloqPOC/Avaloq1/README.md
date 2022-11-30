[![Generic badge](https://img.shields.io/badge/isv_labs-<COLOR>.svg)](https://shields.io/) [![Generic badge](https://img.shields.io/badge/terraform-<COLOR>.svg)](https://shields.io/) [![Generic badge](https://img.shields.io/badge/oci_provider-<COLOR>.svg)](https://shields.io/)

## Project Name
Avaloq POC

## Description of the module
This project contains all the modules and submodules to generate a VCN with required resources.
Compartment IDs inputs will be available only after applying the IAM module as this module ( the module that creates compartments)

## Usage
Edit the variables file:
- Avaloq1/terraform.tfvars-example (containing the values for the variables) and rename the file to Avaloq1/terraform.tfvars

provider_oci = {
  tenancy_ocid     = "..."
  compartment_ocid = "..."
  user_ocid        = "..."
  fingerprint      = "..."
  private_key_path = "..."
  region           = "..."
  home_region      = "..."
}

Then init and terraform script:

```sh
$ cd main
$ terraform init
$ terraform plan
$ terraform apply
```

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 1.0.0 |
| oci | >=4.78.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| drg | git::ssh://devops.scmservice.eu-frankfurt-1.oci.oraclecloud.com/namespaces/frktnetxk9ih/projects/avaloq-saas-poc/repositories/terraform-oci-avaloq-vcn//modules/drg | n/a |
| internet\_gateway | git::ssh://devops.scmservice.eu-frankfurt-1.oci.oraclecloud.com/namespaces/frktnetxk9ih/projects/avaloq-saas-poc/repositories/terraform-oci-avaloq-vcn//modules/internet_gateway | n/a |
| nat\_gateway | git::ssh://devops.scmservice.eu-frankfurt-1.oci.oraclecloud.com/namespaces/frktnetxk9ih/projects/avaloq-saas-poc/repositories/terraform-oci-avaloq-vcn//modules/nat_gateway | n/a |
| ns\_groups | git::ssh://devops.scmservice.eu-frankfurt-1.oci.oraclecloud.com/namespaces/frktnetxk9ih/projects/avaloq-saas-poc/repositories/terraform-oci-avaloq-vcn//modules/nsg | n/a |
| route\_tables | git::ssh://devops.scmservice.eu-frankfurt-1.oci.oraclecloud.com/namespaces/frktnetxk9ih/projects/avaloq-saas-poc/repositories/terraform-oci-avaloq-vcn//modules/route_tables | n/a |
| security\_lists | git::ssh://devops.scmservice.eu-frankfurt-1.oci.oraclecloud.com/namespaces/frktnetxk9ih/projects/avaloq-saas-poc/repositories/terraform-oci-avaloq-vcn//modules/security_lists | n/a |
| service\_gateway | git::ssh://devops.scmservice.eu-frankfurt-1.oci.oraclecloud.com/namespaces/frktnetxk9ih/projects/avaloq-saas-poc/repositories/terraform-oci-avaloq-vcn//modules/service_gateway | n/a |
| subnets | git::ssh://devops.scmservice.eu-frankfurt-1.oci.oraclecloud.com/namespaces/frktnetxk9ih/projects/avaloq-saas-poc/repositories/terraform-oci-avaloq-vcn//modules/subnets | n/a |
| vcn | git::ssh://devops.scmservice.eu-frankfurt-1.oci.oraclecloud.com/namespaces/frktnetxk9ih/projects/avaloq-saas-poc/repositories/terraform-oci-avaloq-vcn//modules/vcn | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| api\_fingerprint | fingerprint of oci api private key | `string` | n/a | yes |
| api\_private\_key\_path | path to oci api private key used | `string` | n/a | yes |
| compartment\_ids | Map of Compartment Name and ID where the resources are created | `map(string)` | n/a | yes |
| cpe\_params | Placeholder for the parameters of the virtual customer-premises equipment | ```map(object({ vcn_name = string cpe_display_name = string ip_address = string cpe_shape_id = string }))``` | `{}` | no |
| drg\_params | Placeholder for Dynamic Routing Gateway parameters | ```map(object({ drg_display_name = string vcn_name = string }))``` | `{}` | no |
| freeform\_tags | Placeholder for the free form tags applied to the resources | `map(string)` | ```{ "Managedby": "Terraform" }``` | no |
| igw\_params | Placeholder for Internet Gateway parameters | ```map(object({ igw_display_name = string vcn_name = string }))``` | `{}` | no |
| isv\_labs | Placeholder for the module version applied to the resources | `map(string)` | ```{ "isv_labs": "0.0.1" }``` | no |
| natgw\_params | Placeholder for NAT Gateway parameters | ```map(object({ natgw_display_name = string vcn_name = string }))``` | `{}` | no |
| nsg\_params | n/a | ```map(object({ vcn_name = string display_name = string compartment_name = string nsg_rules_params = map(object({ #nsg_name = string protocol = string stateless = string direction = string source = string source_type = string destination = string destination_type = string tcp_options = list(object({ destination_ports = list(object({ min = number max = number })) source_ports = list(object({ min = number max = number })) })) udp_options = list(object({ destination_ports = list(object({ min = number max = number })) source_ports = list(object({ min = number max = number })) })) })) }))``` | n/a | yes |
| region | the oci region where resources will be created | `string` | n/a | yes |
| rt\_params | Placeholder for the parameters of the vcn association with route table and route rules | ```map(object({ vcn_name = string rt_display_name = string route_rules = list(object({ network_entity_name = string destination = string destination_type = string })) }))``` | n/a | yes |
| sgw\_params | Placeholder for Service Gateway parameters | ```map(object({ sgw_display_name = string vcn_name = string }))``` | `{}` | no |
| sl\_params | Placeholder for the parameters of the security lists | ```map(object({ vcn_name = string display_name = string egress_rules = list(object({ stateless = string protocol = string destination = string tcp_options = list(object({ min = number max = number })) udp_options = list(object({ min = number max = number })) })) ingress_rules = list(object({ stateless = string protocol = string source = string source_type = string tcp_options = list(object({ min = number max = number })) udp_options = list(object({ min = number max = number })) })) }))``` | `{}` | no |
| subnet\_params | Placeholder for Subnets parameters | ```map(object({ subnet_display_name = string subnet_cidr_block = string subnet_dns_label = string is_subnet_private = bool sl_name = string rt_name = string vcn_name = string compartment_name = string }))``` | `{}` | no |
| tenancy\_id | tenancy id where to create the sources | `string` | n/a | yes |
| user\_id | id of user that terraform will use to create the resources | `string` | n/a | yes |
| vcn\_params | Placeholder for VCN parameters | ```map(object({ vcn_cidr_blocks = list(string) vcn_display_name = string vcn_dns_label = string compartment_name = string enable_ipv6 = bool }))``` | ```{ "demo_vcn": { "compartment_name": "demo", "enable_ipv6": false, "vcn_cidr_blocks": [ "10.0.0.0/16" ], "vcn_display_name": "demo_vcn", "vcn_dns_label": "demovcn" } }``` | no |
| vpn\_params | Placeholder for the parameters of the vpn connection | ```map(object({ vcn_name = string ip_sec_connection_static_routes = list(string) ip_sec_connection_display_name = string cpe_name = string drg_name = string }))``` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| igw\_ids | id of vcn that is created |
| nsg\_ids | id of vcn that is created |
| subnet\_cidr | id of vcn that is created |
| subnet\_ids | id of vcn that is created |
| vcn\_compartments | id of vcn that is created |
| vcn\_ids | id of vcn that is created |
