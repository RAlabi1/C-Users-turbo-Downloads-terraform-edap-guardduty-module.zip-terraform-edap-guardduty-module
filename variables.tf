### General Variables ###
variable "profile" {
  description = "Account to deploy into"
  type        = string
}

variable "region" {
  description = "AWS region in which to deploy"
  type        = string
  default     = "eu-west-2"
}

variable "stage" {
  description = "Environment in which to deploy OMIP"
  type        = string
}

variable "tags" {
  description = "A map of tags to add to the guardduty s3 bucket"
  type = map(string)
  
}

variable "s3-log-bucket" {
  description = "Bucket to send access logs to"
  type        = string
  default     = null
}

variable "s3-force-destroy" {
  description = "Allow destruction of non-empty bucket"
  type        = bool
  default     = false
}



variable "gd-buckets" {
  description = "List of S3 buckets"
  type        = map(string)
}


