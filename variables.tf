# Tagging: https://aws.amazon.com/answers/account-management/aws-tagging-strategies/

variable "bucket_name" {
  description = "Name of the S3 bucket must be uniqe across all global S3 buckets"
  default     = ""
}

variable "acl" {
  description = "Access Control List (ACL) for bucket. Don't change it unless you know what you are doing"
  default     = "privat"
}

variable "tags" {
  type = map
  default = {
    name        = ""
    environment = ""
  }
}

variable "versioning" {
  description = "Enables versioning of S3 bucket objects"
  default     = "false"
}

variable "website" {
  description = "Set if the bucket is used for website hosting. !!!Using this option will make the bucket public!!!"
  type        = bool
  default     = false
}

variable "common_name" {
  description = "Entries for CNAMES"
  type        = string
}

variable "dns_names" {
  description = "Entries for CNAMES"
  type        = list
  default     = []
}

variable "lifecycle_rule" {
  description = ""
  type        = map
  default     = {}
}


