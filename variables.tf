variable "PROUECT_NAME" {
    description = "Provide Project Name.."
}

variable "ACL" {
    type = string
    description = "Enable you to manage access to buckets and objects"
    default = "private"
}

variable "REGION" {
    description = "Enter your region here."  
}

variable "SSE_ALGORITHM" {
    description = "Provide Server Side Encryption with SSE Algoirthm"  
}