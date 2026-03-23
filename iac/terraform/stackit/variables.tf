variable "project_id" {
  description = "The ID of the Stackit project to use for resources."
  type        = string
}

variable "tags" {
  description = "A map of tags to apply to resources for management."
  type        = map(string)
  default = {
    "managedby" = "terraform"
  }
}
variable "service_account_key_path" {
  description = "Path to the Stackit service account key file (JSON)."
  type        = string
}
variable "private_key_path" {
  description = "Path to the private key file (PEM) for SSH access."
  type        = string
}