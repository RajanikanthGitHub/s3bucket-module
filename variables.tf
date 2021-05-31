variable "PROUECT_NAME" {
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

variable "STANDARD_TAGS" {
  description = "TAGS, YOU need them.."
  type = map(string)
  default = { }
  
}