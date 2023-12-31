variable "name" {
  type        = string
  default     = "vault-ci"
  description = "The name of the VPC"
}

variable "cidr" {
  type        = string
  default     = "10.13.0.0/16"
  description = "CIDR block for the VPC"
}

variable "environment" {
  description = "Name of the environment."
  type        = string
  default     = "vault-ci"
}

variable "common_tags" {
  description = "Tags to set for all resources"
  type        = map(string)
  default     = { "Project" : "vault-ci" }
}

variable "create_kms_key" {
  description = "Whether or not to create an key management service key"
  type        = bool
  default     = true
}
