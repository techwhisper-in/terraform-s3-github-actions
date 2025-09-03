variable "create_bucket" {
  type        = string
  description = "value set to true then create a s3 bucket otherwise do not create s3 bucket"
  default = "false"
}

variable "env" {
  type        = string
  description = "This variable is used for any environment"
  default = "dev"
}
variable "EnvType" {
  type        = string
  description = "This variable is used for any environment type"
  default = "primary"
}
variable "ApplicationCI" {
  type        = string
  description = "This variable is used for the appci"
  default = "ecp"
}

variable "Region" {
  type = string
  default = "us-east-2"
}

variable "BucketName" {
  description = "The name of the bucket will be truncated at 50 characters (if append_random_suffix is true) to allow for the 63 char limit"
  type        = string
}

variable "custom_tags" {
  description = "Custom tags which can be passed on to the AWS resources. They should be key value pairs having distinct keys."
  type        = map(any)
  default     = {}
}

variable "enable_versioning" {
  type        = string
  description = "This varibale is used for enabling versioning"
  default     = "true"
}

variable "object_ownership" {
  type    = string
  default = "BucketOwnerEnforced"
}