# odp-tf-aws-ref-arch-config

The `odp-tf-aws-ref-arch-config` module is used to deploy the AWS Config service with some solid security baked into several policies.

# ODP Terraform 

## Overview <a name="s1"></a>

The MODULE  module is used to configure X resources.

## Table of Contents <a name="s2"></a>

* [Overview](#s1)
* [Table of Conents](#s2)
* [Module Contents](#s3)
* [Module Variables](#s4)
* [Module Setup](#s5)
* [Resources Created](#s6)


## Module Contents <a name="s3"></a>

| Folder / File      |  Description  |
|---          |---    |
| main.tf   |   description |
| variables.tf   |   description |
| output.tf   |   description |

## Module Variables  <a name="s4"></a>


### Inputs

The following variables need to be set either by setting proper environment variables or editing the variables.tf file:

| Variable      |  Type  |  Description  |
|---          |---        |---  | 
| project  |  string |   Project name to that makes up part of prefix for resources. |
| config_bucket_name  |  string |   S3 Bucket used to store config exports. |
| aws_config_bucket_key_prefix  |  string |   Prefix where config exports are stored. |
| aws_account_id  |  string |   Account ID to deploy config. |


### Outputs

The following variables need to be set either by setting proper environment variables or editing the variables.tf file:

| Variable      |  Type  |  Description  |
|---          |---        |---  | 
|   |   |    |

## Module Setup <a name="s5"></a>


### Required IAM


### Example


```
variable "project" {
  description = "Project name"
  default = "odp-ref-arch"
}

variable "config_bucket_name" {
  description = "Config bucket name"
  default = "XXXXXXXXXXX"
}

variable "aws_config_bucket_key_prefix" {
  description = "enable bucket versioning"
  default     = "awsconfig"
}

variable "aws_account_id" {
  description = "aws account ID"
  default = "XXXXXXXXXXX"
}

module "config" {
  source         = "../"
  config_bucket_name         = "${var.config_bucket_name}"
  aws_account_id    = "${var.aws_account_id}"
  aws_region        = "${var.aws_region}"
  project           = "${var.project}"  
}


```


## Resources Created <a name="s6"></a>

### Config Rules

* CLOUD_TRAIL_ENCRYPTION_ENABLED
* MFA_ENABLED_FOR_IAM_CONSOLE_ACCESS
* IAM_USER_UNUSED_CREDENTIALS_CHECK
* ROOT_ACCOUNT_MFA_ENABLED
* ACCESS_KEYS_ROTATED
* CLOUD_TRAIL_LOG_FILE_VALIDATION_ENABLED
* S3_BUCKET_PUBLIC_READ_PROHIBITED
* S3_BUCKET_PUBLIC_WRITE_PROHIBITED
* S3_BUCKET_SERVER_SIDE_ENCRYPTION_ENABLED
* S3_BUCKET_VERSIONING_ENABLED
* GUARDDUTY_ENABLED_CENTRALIZED
* S3_BUCKET_LOGGING_ENABLED
