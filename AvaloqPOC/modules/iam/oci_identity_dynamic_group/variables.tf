variable "compartment_id" {
  type        = string
  description = "The OCID of the tenancy containing the group."
}

variable "description" {
  type        = string
  description = "The description you assign to the group during creation. Does not have to be unique, and it's changeable."
}

variable "matching_rule" {
  type        = string
  description = "The matching rule to dynamically match an instance certificate to this dynamic group."
}

variable "name" {
  type        = string
  description = "The name you assign to the group during creation. The name must be unique across all groups in the tenancy and cannot be changed."
}

variable "freeform_tags" {
  type        = map(string)
  description = "Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace."
  default = {
    Managedby = "Terraform"
  }
  nullable = false
}
