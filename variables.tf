variable "PROUECT_NAME" {
  description = "Provide Project Name.."
}

variable "ACL" {
  type        = string
  description = "Enable you to manage access to buckets and objects"
  default     = "private"
}

variable "REGION" {
  description = "Enter your region here."
  default     = "us-east-1"
}

# variable "SSE_ALGORITHM" {
#     description = "Provide Server Side Encryption with SSE Algoirthm"  
# }

variable "STANDARD_TAGS" {
  description = "TAGS, YOU need them.."
  type = map(string)
  default     = {
    "Terraform" = "true"
    "Environment" = "Dev"
    "VPC Name"    = "Main"
    "Terraform"   = "14.3"
  }
}