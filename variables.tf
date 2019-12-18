variable "aws_region" {
  type = string
  description = "Default region used by some modules"
  default = "us-east-1"
}


variable "project" {
  description = "Project name"
}


variable "config_bucket_name" {
  description = "Config bucket name"
}

variable "aws_config_bucket_key_prefix" {
  description = "enable bucket versioning"
  default     = "awsconfig"
}

variable "aws_account_id" {
  description = "aws account ID"
}

variable "access_bucket" {
  description = "YOUR-BUCKET-NAME"
}