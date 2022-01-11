# -----------------------------------------------------------------------------
# Required inputs
# -----------------------------------------------------------------------------
variable "compartment_name" {
  type        = string
  description = "Name of the compartment to create"
}

variable "tenancy_ocid" {
  type        = string
  description = "root-level / tenancy OCID"
}

variable "tag_cost_center" {
  type        = string
  description = "CostCenter tag value"
}

variable "tag_geo_location" {
  type        = string
  description = "GeoLocation tag value"
}

# ---------------------------------------------------------------------------------------------------------------------
# Optional suffix string to prevent naming collision with tenancy level resources
# ---------------------------------------------------------------------------------------------------------------------
variable "suffix" {
  type        = string
  description = "Optional suffix string used in a resource name"
}