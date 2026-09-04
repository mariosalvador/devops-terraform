variable "state_bucket" {
  type        = string
  default     = "terraform-iac-2026"
  description = "The name of the S3 bucket to store the Terraform state file."
}
