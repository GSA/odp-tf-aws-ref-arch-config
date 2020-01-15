provider "aws" {
  region  = "us-east-1"
}

module "config" {
  source         = "../"
  config_bucket_name         = "${var.config_bucket_name}"
  aws_account_id    = "${var.aws_account_id}"
  aws_region        = "${var.aws_region}"
  project           = "${var.project}"  
}

