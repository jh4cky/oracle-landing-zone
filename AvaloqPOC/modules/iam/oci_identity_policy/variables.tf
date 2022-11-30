variable "compartment_id" {
  type        = string
  description = "The OCID of the compartment containing the policy (either the tenancy or another compartment)."
}

variable "description" {
  type        = string
  description = "The description you assign to the policy during creation. Does not have to be unique, and it's changeable."
}

variable "name" {
  type        = string
  description = " The name you assign to the policy during creation. The name must be unique across all policies in the tenancy and cannot be changed."
}

variable "statements" {
  type        = list(string)
  description = "An array of policy statements written in the policy language"
}

variable "freeform_tags" {
  type        = map(string)
  description = "Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace."
  default = {
    Managedby = "Terraform"
  }
  nullable = false
}
