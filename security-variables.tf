variable "cloud_guard_configuration_status" {
  type        = string
  description = "the status of the Cloud Guard tenant (ENABLED or DISABLED)"
  validation {
    condition     = var.cloud_guard_configuration_status == "ENABLED" || var.cloud_guard_configuration_status == "DISABLED"
    error_message = "Please enter ENABLED or DISABLED for the status of the Cloud Guard Configuration."
  }
}

variable "configuration_detector_recipe_display_name" {
  type        = string
  description = "display name for configuration detector recipe"
  default     = "OCI Configuration Detector Recipe"
}

variable "activity_detector_recipe_display_name" {
  type        = string
  description = "display name for activity detector recipe"
  default     = "OCI Activity Detector Recipe"
}

variable "vulnerability_scanning_service_policy_name" {
 type        = string
 description = "Name of Scanning Service Policy"
 default     = "OCI-LZ-Scanning-Service-Policy"
}

variable "retention_rule_duration_time_amount" {
 type        = string
 description = "Amount of retention rule duration time"

 validation {
    condition     = var.retention_rule_duration_time_amount > 365
    error_message = "The amount of retention rule time duration should be greater than 365 days."
  }
}
