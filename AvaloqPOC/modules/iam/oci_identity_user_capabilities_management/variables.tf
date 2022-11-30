variable "id" {
  type        = string
  description = "The OCID of the user."
}

variable "can_use_api_keys" {
  type        = bool
  description = "Indicates if the user can use API keys."
  default     = true
  nullable    = false
}

variable "can_use_auth_tokens" {
  type        = bool
  description = "Indicates if the user can use SWIFT passwords / auth tokens."
  default     = true
  nullable    = false
}

variable "can_use_console_password" {
  type        = bool
  description = "Indicates if the user can log in to the console."
  default     = false
  nullable    = false
}

variable "can_use_customer_secret_keys" {
  type        = bool
  description = "Indicates if the user can use SigV4 symmetric keys."
  default     = false
  nullable    = false
}

variable "can_use_smtp_credentials" {
  type        = bool
  description = "Indicates if the user can use SMTP passwords."
  default     = false
  nullable    = false
}
