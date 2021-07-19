variable "region" {
  type        = string
  description = "Region"
  default     = "ca-central-1"
}

variable "state_bucket" {
  type        = string
  description = "S3 Bucket to store states"
  default     = "test-statebucket446e0578-rkokcr4bdu3f"
}

variable "state_region" {
  type        = string
  description = "State bucket region"
  default     = "ca-central-1"
}
