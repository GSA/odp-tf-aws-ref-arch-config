module "config" {
  source         = "../"
  name           = "${module.s3.bucket_name}"
  env            = "${var.env}"
  aws_account_id = "${data.aws_caller_identity.current.account_id}"
  aws_region     = "${var.env}"
  access_bucket  = "bucket-name-goes-here"
}