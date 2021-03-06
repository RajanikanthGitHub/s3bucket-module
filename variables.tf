variable "PROJECT_NAME" {
  type = string
  description = "Provide Project Name.."
}

variable "ACL" {
  description = "Enable you to manage access to buckets and objects"
  type        = string
  default     = "private"
}

variable "REGION" {
  description = "Enter your region here."
  default     = "us-east-1"
}

variable "ENVIRONMENT" {
    description = "Provide Server Side Encryption with SSE Algoirthm"
    type = string
}

variable "tags" {
  description = "TAGS, YOU need them.."
  type = map(string)
  default = {}
  
}